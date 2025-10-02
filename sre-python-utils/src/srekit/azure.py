
from __future__ import annotations
from azure.identity import DefaultAzureCredential

def get_default_cred() -> DefaultAzureCredential:
    return DefaultAzureCredential(exclude_shared_token_cache_credential=True)

# Example (install per-need):
# from azure.mgmt.resource import SubscriptionClient
# subs = SubscriptionClient(get_default_cred()).subscriptions.list()
