# List of enabled modules
modules = ("core", "auth", "storage")

# Alias points to the same tuple in memory
alias = modules
# Create a shallow copy using slicing
copied = modules[:]
# Or you can use the tuple constructor
# copied = tuple(modules)

print("modules is alias:", modules is alias)
print("modules is copied:", modules is copied)