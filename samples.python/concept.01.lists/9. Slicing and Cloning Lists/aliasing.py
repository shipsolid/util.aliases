# List of enabled modules
modules = ["core", "auth", "storage"]

# This creates an alias, not a copy
linked = modules

linked.append("analytics")

print("Original list:", modules)
print("Alias list:", linked)