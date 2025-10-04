from collections import deque

numbers = deque([0, 1, 2, 3], maxlen=5)
print("Maxlen:", numbers.maxlen)
print(numbers)

# Allowed, because the original deque has just 4 elements
numbers.appendleft(-1)
print("After numbers.appendleft(-1):\t", numbers)

# This will discard the first number -1
numbers.append(4)
print("After numbers.append(4):\t", numbers)

# This will discard the first number 0
numbers.append(5)
print("After numbers.append(5):\t", numbers)

# This will discard the last number 5
numbers.appendleft(0)
print("After numbers.appendleft(0):\t", numbers)