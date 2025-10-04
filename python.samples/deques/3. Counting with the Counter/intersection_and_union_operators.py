# This is an additional example

from collections import Counter

# Number of steps in two different fitness apps
apple_watch = Counter({"walking": 6000, "running": 3000, "stairs": 800, "cycling": 1500})
fitbit = Counter({"walking": 5500, "running": 3500, "stairs": 900, "swimming": 1200})

# Keeps only keys present in both counters, using the minimum count for each
# intersection
agreed_steps = apple_watch & fitbit
print("Reliable step counts (minimum from both):")
print(agreed_steps)

# Combines all keys, keeping the maximum count per key from either counter
# union
max_steps = apple_watch | fitbit
print("\nTotal possible steps (maximum from either):")
print(max_steps)