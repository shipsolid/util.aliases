
from __future__ import annotations
from typing import Any, Dict
from .http import HTTPClient

class GrafanaClient:
    def __init__(self, url: str, token: str):
        headers = {"Authorization": f"Bearer {token}"}
        self.http = HTTPClient(base_url=url.rstrip('/'), headers=headers)

    def me(self) -> Dict[str, Any]:
        r = self.http.get("/api/user")
        r.raise_for_status()
        return r.json()

    def search_dashboards(self, query: str):
        r = self.http.get("/api/search", params={"query": query})
        r.raise_for_status()
        return r.json()

    def create_folder(self, title: str, uid: str | None = None):
        payload = {"title": title}
        if uid:
            payload["uid"] = uid
        r = self.http.post("/api/folders", json=payload)
        r.raise_for_status()
        return r.json()
