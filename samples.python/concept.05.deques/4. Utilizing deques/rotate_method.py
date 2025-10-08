from collections import deque

letters = deque(["a", "b", "c"])
print(letters)

# Rotate elements one step to the right
letters.rotate()
print("letters.rotate():\t", letters)

# Rotate elements two steps to the right
letters.rotate(2)
print("letters.rotate(2):\t", letters)

# Rotate elements one step to the left
letters.rotate(-1)
print("letters.rotate(-1):\t", letters)