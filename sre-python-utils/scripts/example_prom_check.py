
#!/usr/bin/env python3
"""Query Prometheus and alert on CPU threshold via Slack webhook."""
from __future__ import annotations
import json
import httpx
from srekit.config import load_config
from srekit.logging import setup_logging, get_logger
from srekit.prom import PromClient

log = get_logger(__name__)

def main():
    cfg = load_config()
    setup_logging(level=cfg.get("logging", {}).get("level", "INFO"), json_mode=cfg.get("logging", {}).get("json", False))

    prom_url = cfg.get("prometheus", {}).get("url")
    if not prom_url:
        log.error("prometheus.url is not configured")
        return 2
    prom = PromClient(url=prom_url)

    offenders = prom.simple_cpu_over_threshold(threshold=80.0, window="5m")
    if offenders:
        msg = f"High CPU detected on: {json.dumps(offenders)}"
        log.warning(msg)
        webhook = cfg.get("slack", {}).get("webhook_url")
        if webhook:
            try:
                httpx.post(webhook, json={"text": msg}, timeout=10.0)
            except Exception as e:
                log.exception("Failed to post to Slack: %s", e)
    else:
        log.info("All good.")
    return 0

if __name__ == "__main__":
    raise SystemExit(main())
