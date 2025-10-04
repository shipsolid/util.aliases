original = {"theme": "dark"}

shallow_copy = original.copy()
# You can also use dict()
# shallow_copy = dict(original)

shallow_copy["theme"] = "light"

print("original:", original)
print("shallow_copy:", shallow_copy)