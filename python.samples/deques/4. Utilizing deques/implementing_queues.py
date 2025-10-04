from collections import deque
import time

def process_task(task):
    print("Processing task:", task)
    time.sleep(0.5)  # Simulate time-consuming task processing

task_queue = deque(["task_1", "task_2", "task_3"])
print(task_queue)

# Process tasks in the queue
while task_queue:
    current_task = task_queue.popleft()
    process_task(current_task)