
from __future__ import annotations
import datetime as dt
from typing import Any, Dict
from prometheus_api_client import PrometheusConnect

class PromClient:
    def __init__(self, url: str, disable_ssl: bool = True):
        self.prom = PrometheusConnect(url=url, disable_ssl=disable_ssl)

    def instant(self, query: str) -> Any:
        return self.prom.custom_query(query=query)

    def range(self, query: str, start: dt.datetime, end: dt.datetime, step: str = "60s") -> Any:
        return self.prom.custom_query_range(query=query, start_time=start, end_time=end, step=step)

    def simple_cpu_over_threshold(self, threshold: float = 80.0, window: str = "5m") -> Dict[str, float]:
        q = f"100 - (avg by(instance) (rate(node_cpu_seconds_total{{mode='idle'}}[{window}])) * 100)"
        res = self.instant(q) or []
        out: Dict[str, float] = {}
        for item in res:
            inst = item.get('metric', {}).get('instance', 'unknown')
            try:
                val = float(item.get('value', [None, 0])[1])
            except Exception:
                val = 0.0
            if val >= threshold:
                out[inst] = val
        return out
