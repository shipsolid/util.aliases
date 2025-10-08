from collections import deque

# Initial weekly schedule for 3 employees
schedule = deque(["Élodie", "Jisoo", "Nils"])

# Simulate rotation for 4 weeks
for week in range(1, 5):
    print(f"Week {week} schedule: {list(schedule)}")
    schedule.rotate()  # Rotate the schedule