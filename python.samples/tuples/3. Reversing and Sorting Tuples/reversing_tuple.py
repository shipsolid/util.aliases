steps = ("start", "load data", "process", "validate", "save", "end")

# reversed() returns an iterator
reversed_steps = tuple(reversed(steps))
print("Reversed tuple:", reversed_steps)

reversed_steps_slice = steps[::-1]
print("Reversed tuple (using slicing):", reversed_steps_slice)