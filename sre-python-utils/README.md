
SRE/Observability Python Starter Kit
====================================

Features:
- CLI with Typer
- YAML config + .env overrides
- Rich/JSON logging
- httpx client with retries
- APScheduler jobs
- Prometheus & Grafana helpers
- Azure auth helper (DefaultAzureCredential)

Quickstart:
1) python3 -m venv .venv && source .venv/bin/activate
2) pip install -r requirements.txt
3) cp config/config.example.yaml config/config.yaml ; cp .env.example .env
4) python -m srekit.cli --help

Config env overrides:
- Prefix env vars with `SREKIT__`, and use `__` between nested keys.
  Example:
    SREKIT__grafana__url=https://grafana.example.com
    SREKIT__logging__json=true
