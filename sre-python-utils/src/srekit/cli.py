
from __future__ import annotations
import datetime as dt, os, json, typer, logging
from .config import load_config
from .logging import setup_logging, get_logger
from .prom import PromClient
from .grafana import GrafanaClient
from .schedule import run_interval

app = typer.Typer(help="SRE/Observability utility CLI")
log = get_logger(__name__)

@app.callback()
def main(
    config_path: str = typer.Option("config/config.yaml", "--config", "-c", help="Path to YAML config"),
    json_logs: bool = typer.Option(None, help="Force JSON logs (override config)"),
    log_level: str = typer.Option(None, help="Override log level"),
):
    cfg = load_config(paths=[os.path.expanduser(config_path)])
    lvl = (log_level or cfg.get("logging", {}).get("level", "INFO"))
    jmode = (json_logs if json_logs is not None else cfg.get("logging", {}).get("json", False))
    setup_logging(level=lvl, json_mode=bool(jmode))
    setattr(app, "cfg", cfg)

# ---- Prometheus ----
prom_app = typer.Typer(help="Prometheus helpers")
app.add_typer(prom_app, name="prom")

@prom_app.command("query")
def prom_query(q: str = typer.Option(..., "--q", help="PromQL query"),
               window: str = typer.Option(None, "--range", help="Range like 5m (instant if omitted)")):
    cfg = getattr(app, "cfg")
    purl = cfg.get("prometheus", {}).get("url")
    if not purl:
        typer.echo("prometheus.url not configured", err=True)
        raise typer.Exit(2)
    prom = PromClient(url=purl)
    if window:
        end = dt.datetime.utcnow()
        mins = int(window.rstrip("m"))
        start = end - dt.timedelta(minutes=mins)
        data = prom.range(q, start, end, step="60s")
    else:
        data = prom.instant(q)
    typer.echo(json.dumps(data, indent=2))

@prom_app.command("check-cpu")
def prom_check_cpu(threshold: float = 80.0, window: str = "5m"):
    cfg = getattr(app, "cfg")
    purl = cfg.get("prometheus", {}).get("url")
    if not purl:
        typer.echo("prometheus.url not configured", err=True)
        raise typer.Exit(2)
    prom = PromClient(url=purl)
    offenders = prom.simple_cpu_over_threshold(threshold=threshold, window=window)
    if offenders:
        log.warning(f"High CPU: {offenders}")
    else:
        log.info("All good.")

# ---- Grafana ----
graf_app = typer.Typer(help="Grafana helpers")
app.add_typer(graf_app, name="grafana")

@graf_app.command("me")
def grafana_me():
    cfg = getattr(app, "cfg")
    gcfg = cfg.get("grafana", {})
    url = gcfg.get("url")
    token = gcfg.get("token")
    if not url or not token:
        typer.echo("grafana.url/token not configured", err=True)
        raise typer.Exit(2)
    gf = GrafanaClient(url=url, token=token)
    typer.echo(json.dumps(gf.me(), indent=2))

# ---- Scheduler ----
@app.command("run-scheduler")
def run_scheduler():
    cfg = getattr(app, "cfg")
    tz = cfg.get("scheduler", {}).get("timezone", "UTC")
    def job():
        log.info("Heartbeat job executed.")
    run_interval(job, seconds=60, timezone=tz)

if __name__ == "__main__":
    app()
