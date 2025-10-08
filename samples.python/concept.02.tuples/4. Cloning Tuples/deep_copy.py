import copy

# Tuple of settings, each with a sub-list of values
settings = (["volume", 70], ["brightness", 50])

# Create a deep copy
deep_copy = copy.deepcopy(settings)

# Modify the inner list in the deep copy
deep_copy[0][1] = 20

print("Original after deep copy:", settings)
print("Deep copy:", deep_copy)