
from __future__ import annotations
from apscheduler.schedulers.background import BackgroundScheduler
from apscheduler.triggers.cron import CronTrigger
from apscheduler.triggers.interval import IntervalTrigger
import time
from typing import Callable, Any

def run_interval(func: Callable[..., Any], seconds: int = 60, timezone: str | None = None, *args, **kwargs) -> None:
    sched = BackgroundScheduler(timezone=timezone)
    sched.add_job(func, trigger=IntervalTrigger(seconds=seconds), args=args, kwargs=kwargs)
    sched.start()
    try:
        while True:
            time.sleep(1)
    except (KeyboardInterrupt, SystemExit):
        sched.shutdown()

def run_cron(func: Callable[..., Any], cron: str, timezone: str | None = None, *args, **kwargs) -> None:
    minute, hour, dom, month, dow = cron.split()
    trigger = CronTrigger(minute=minute, hour=hour, day=dom, month=month, day_of_week=dow)
    sched = BackgroundScheduler(timezone=timezone)
    sched.add_job(func, trigger=trigger, args=args, kwargs=kwargs)
    sched.start()
    try:
        while True:
            time.sleep(1)
    except (KeyboardInterrupt, SystemExit):
        sched.shutdown()
