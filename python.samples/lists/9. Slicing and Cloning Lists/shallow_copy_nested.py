# List of settings, each with a sub-list of values
settings = [["volume", 70], ["brightness", 50]]

# Create a shallow copy
shallow_copy = settings[:]

# Modify the inner list in the shallow copy
shallow_copy[0][1] = 20

print("Original after shallow copy:", settings)
print("Shallow copy:", shallow_copy)