# List of enabled modules
modules = ["core", "auth", "storage"]

# Create a shallow copy using slicing
copied = modules[:]
# Or you can use the list constructor
# copied = list(modules)

copied.remove("auth")

print("Original:", modules)
print("Shallow copy:", copied)