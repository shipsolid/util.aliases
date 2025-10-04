letters = ["a", "b", "c", "d", "e", "f", "g"]

print("letters:\t", letters)
# list[start:end] (start element is included)
print("letters[2:5]:\t", letters[2:5])

# You can use negative indices
print("letters[-4:-1]:\t", letters[-4:-1])

# list[:end] (from beginning of the list to the index)
print("letters[:3]:\t", letters[:3])
# list[start:] (from the start index to the end of the list)
print("letters[4:]:\t", letters[4:])