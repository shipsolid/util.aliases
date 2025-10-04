colors = {"red", "blue", "green"}

# pop() returns the removed element
removed_color = colors.pop()
print(f"Removed: {removed_color}")
print(f"Remaining colors: {colors}")

# Empty set would raise KeyError if pop() is used
# empty_set = set()
# empty_set.pop()  # Would raise KeyError