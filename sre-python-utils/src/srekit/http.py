
from __future__ import annotations
import httpx
from tenacity import retry, stop_after_attempt, wait_exponential, retry_if_exception_type
from typing import Optional, Dict, Any

class HTTPClient:
    def __init__(self, base_url: str | None = None, headers: Optional[Dict[str, str]] = None, timeout: float = 30.0):
        self._client = httpx.Client(base_url=(base_url or ""), headers=headers, timeout=timeout)

    def close(self) -> None:
        self._client.close()

    @retry(reraise=True, stop=stop_after_attempt(5), wait=wait_exponential(multiplier=0.5, min=0.5, max=8),
           retry=retry_if_exception_type(httpx.RequestError))
    def request(self, method: str, url: str, **kwargs: Any) -> httpx.Response:
        return self._client.request(method, url, **kwargs)

    def get(self, url: str, **kwargs: Any) -> httpx.Response:
        return self.request("GET", url, **kwargs)

    def post(self, url: str, **kwargs: Any) -> httpx.Response:
        return self.request("POST", url, **kwargs)

    def put(self, url: str, **kwargs: Any) -> httpx.Response:
        return self.request("PUT", url, **kwargs)

    def delete(self, url: str, **kwargs: Any) -> httpx.Response:
        return self.request("DELETE", url, **kwargs)
