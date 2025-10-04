from collections import deque

dq = deque([1])
print("Initial deque:")
print(dq)

# Add elements to the right
dq.extend([2, 3])
print("After extend([2, 3]):")
print(dq)

# Add elements to the left, but insert each at the front,
# so the final order appears reversed
dq.extendleft([0, -1])
print("After extendleft([0, -1]):")
print(dq)