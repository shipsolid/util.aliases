uptime_hours = {
    "server1": 120,
    "server2": 98,
    "server3": 143,
    "server4": 0  # offline
}

values = uptime_hours.values()

print("Total servers:", len(values))            # Total number of servers
print("Total uptime:", sum(values))             # Combined uptime
print("Max uptime:", max(values))               # Longest running server
print("Min uptime:", min(values))               # Shortest (could be 0)
print("All running?", all(values))              # False if any value is 0
print("Any running?", any(values))              # True if at least one is > 0