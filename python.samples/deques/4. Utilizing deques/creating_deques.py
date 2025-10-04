from collections import deque

# Create an empty deque
dq = deque()
print(dq)

# Initialize deque with an iterable
dq = deque((1,2,3)) # tuple
print(dq)

dq = deque([1,2,3]) # list
print(dq)

dict1 = {"a": 1, "b": 2, "c": 3}
dq = deque(dict1.items()) # dictionary view object

print(dq)