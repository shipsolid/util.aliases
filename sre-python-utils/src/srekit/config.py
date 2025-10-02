
from __future__ import annotations
import os
import yaml
from pathlib import Path
from dotenv import load_dotenv
from typing import Any, Dict, List

load_dotenv()

DEFAULT_PATHS = [Path("config/config.yaml"), Path("./config.yaml")]

def _deep_merge(base: Dict[str, Any], override: Dict[str, Any]) -> Dict[str, Any]:
    for k, v in override.items():
        if isinstance(v, dict) and isinstance(base.get(k), dict):
            base[k] = _deep_merge(base[k], v)
        else:
            base[k] = v
    return base

def _set_nested(cfg: Dict[str, Any], keys: List[str], value: Any) -> None:
    cur = cfg
    for k in keys[:-1]:
        if k not in cur or not isinstance(cur[k], dict):
            cur[k] = {}
        cur = cur[k]
    cur[keys[-1]] = value

def load_config(paths: List[Path] | None = None, env_prefix: str = "SREKIT__") -> Dict[str, Any]:
    cfg: Dict[str, Any] = {}
    for p in (paths or DEFAULT_PATHS):
        if p.exists():
            with open(p, "r", encoding="utf-8") as f:
                _deep_merge(cfg, yaml.safe_load(f) or {})
    for k, v in os.environ.items():
        if not k.startswith(env_prefix):
            continue
        path = k[len(env_prefix):]
        keys = path.split("__")
        lv = v.lower()
        if lv in ("true","false"):
            cast = (lv == "true")
        else:
            cast = v
        _set_nested(cfg, keys, cast)
    return cfg
