# Active timers in seconds
timers = [300, 600, 120, 45]

# Remove specific element by index
# Cancel the second timer (index 1)
cancelled = timers.pop(1)

print("Remaining timers:", timers)
print("Cancelled timer:", cancelled)