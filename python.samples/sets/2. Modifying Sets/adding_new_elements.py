# A set of fruits
fruits = {"apple", "banana"}

fruits.add("orange")
print(fruits)

# Sets cannot contain mutable elements
try:
    fruits.add(["pear", "grape"])  # Lists are mutable and not hashable
except TypeError as e:
    print(f"Error adding list: {e}")