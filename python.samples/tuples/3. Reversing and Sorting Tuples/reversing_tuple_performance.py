import time

huge_tuple = tuple(range(100_000_000))  # 100 million items

# Using reversed() — lazy
start = time.time()
for i in reversed(huge_tuple):
    break
end = time.time()
print("Time with reversed():", round(end - start, 4), "seconds")

# Using slicing — eager
start = time.time()
for i in huge_tuple[::-1]:
    break
end = time.time()
print("Time with slicing:", round(end - start, 4), "seconds")