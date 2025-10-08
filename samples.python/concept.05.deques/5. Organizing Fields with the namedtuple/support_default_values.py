from collections import namedtuple

# The 'defaults' argument
Dog = namedtuple("Dog", ["name", "age", "location"], defaults=[0, "Home"])
dog = Dog("Balto")
print("dog:", dog)
print("dog._field_defaults:", dog._field_defaults)