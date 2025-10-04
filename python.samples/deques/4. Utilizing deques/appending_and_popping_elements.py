from collections import deque

dq = deque([1])
print("Initial deque:\t\t", dq)

# Append elements from both sides
# Append to the right
dq.append(2)
print("After append(2):\t", dq)
# Append to the left
dq.appendleft(0)
print("After appendleft(0):\t", dq)

# Pop elements from both sides
# Pop from the right
dq.pop()
print("After pop():\t\t", dq)
# Pop from the left
popped_el = dq.popleft()
print("After popleft():\t", dq)
print("Popped element from the left:", popped_el)