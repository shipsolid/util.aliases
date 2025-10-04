def log_event(event_type, **metadata):
    print("Event:", event_type)
    print("Details:", metadata)

log_event("login", user="anon", location="unknown")