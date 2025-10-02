
# SRE/Observability Python Starter Kit

====================================

## Features

- CLI with Typer
- YAML config + .env overrides
- Rich/JSON logging
- httpx client with retries
- APScheduler jobs
- Prometheus & Grafana helpers
- Azure auth helper (DefaultAzureCredential)

## What’s inside

- `src/srekit/cli.py` — Typer-based CLI (`python -m srekit.cli --help`)
- `src/srekit/config.py` — Load `config.yaml` + `.env` overrides (env keys like `SREKIT__grafana__token`)
- `src/srekit/logging.py` — Rich pretty logs or pipeline-friendly JSON logs
- `src/srekit/http.py` — `httpx` + `tenacity` retry wrapper
- `src/srekit/schedule.py` — simple interval/cron runners (APScheduler)
- `src/srekit/prom.py` — Prometheus helper (instant/range + sample CPU check)
- `src/srekit/grafana.py` — Grafana REST helper (`/api/user`, search, create folder)
- `src/srekit/azure.py` — `DefaultAzureCredential()` helper (add SDKs as needed)
- `scripts/example_prom_check.py` — demo: CPU>80% → Slack webhook
- `config/config.example.yaml` & `.env.example`
- `requirements.txt` & a brief `README.md`

## Quickstart

1) python3 -m venv .venv && source .venv/bin/activate
2) pip install -r requirements.txt
3) cp config/config.example.yaml config/config.yaml ; cp .env.example .env
4) python -m srekit.cli --help

```bash
python3 -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt

cp config/config.example.yaml config/config.yaml
cp .env.example .env
# fill in: prometheus.url, grafana.url/token, slack.webhook_url, etc.

# Try the CLI
python -m srekit.cli --help
python -m srekit.cli prom query --q 'up'
python -m srekit.cli prom check-cpu --threshold 80 --range 5m
python -m srekit.cli grafana me

# Or run the example script
python scripts/example_prom_check.py
```

### Config env overrides

- Prefix env vars with `SREKIT__`, and use `__` between nested keys.
  Example:
    SREKIT__grafana__url=https://grafana.example.com
    SREKIT__logging__json=true

Set env vars with `SREKIT__` prefix and `__` for nesting:

```sh
SREKIT__grafana__url=https://grafana.example.com
SREKIT__grafana__token=glsa_xxx
SREKIT__logging__json=true
```

## Nice next steps

- Add **Azure SDKs** you need per task (`azure-mgmt-monitor`, `azure-mgmt-compute`, etc.) and extend `azure.py`.
- Create **persona commands** in `cli.py` (e.g., `mdixai onboard-service`, `alerts sync`, `dashboards push`).
- Add a `rules/` folder and a small loader to post **Grafana alerts** or **dashboards** from YAML/Jinja templates.
- Wire **GitHub Actions** to run health checks on schedule using the CLI and JSON logging.

In Kitchen:

- A **Grafana dashboard push** command,
- An **alert rule sync** command (YAML → Grafana API),
- Or an **Azure VM inventory** command (using `DefaultAzureCredential`)?
