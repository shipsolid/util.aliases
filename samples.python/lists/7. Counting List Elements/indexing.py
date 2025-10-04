task_queue = ["backup", "scan", "update", "scan"]

# Get the position of the first "scan" task
first_scan = task_queue.index("scan")

print("First 'scan' task is at position:", first_scan)