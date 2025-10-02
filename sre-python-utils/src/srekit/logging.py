
from __future__ import annotations
import json, logging, sys
from typing import Any, Dict, Optional
from rich.console import Console
from rich.logging import RichHandler

_console = Console(stderr=True)

class JsonFormatter(logging.Formatter):
    def format(self, record: logging.LogRecord) -> str:
        payload: Dict[str, Any] = {
            "level": record.levelname,
            "message": record.getMessage(),
            "logger": record.name,
        }
        if record.exc_info:
            payload["exc_info"] = self.formatException(record.exc_info)
        return json.dumps(payload, ensure_ascii=False)

def setup_logging(level: str = "INFO", json_mode: bool = False) -> None:
    root = logging.getLogger()
    for h in list(root.handlers):
        root.removeHandler(h)
    root.setLevel(level.upper())
    if json_mode:
        h = logging.StreamHandler(sys.stderr)
        h.setFormatter(JsonFormatter())
    else:
        h = RichHandler(console=_console, rich_tracebacks=True, markup=True)
        h.setFormatter(logging.Formatter("%(message)s"))
    root.addHandler(h)

def get_logger(name: Optional[str] = None) -> logging.Logger:
    return logging.getLogger(name)
