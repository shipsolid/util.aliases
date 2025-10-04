# Frozenset Basics

# Creating a frozenset
fset = frozenset(["tomato", "banana", "cherry"])

# Frozensets are immutable: you cannot add, remove, or change elements
try:
    fset.add("orange")
except AttributeError as e:
    print("Error:", e)
    print("Frozensets are immutable — you cannot add or remove elements.")