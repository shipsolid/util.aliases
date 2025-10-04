from collections import namedtuple

# Creating a new tuple subclass (namedtuple class)
Pixel = namedtuple("Pixel", "red green blue")
# Pixel = namedtuple("Pixel", "red, green, blue")
# Pixel = namedtuple("Pixel", ["red", "green", "blue"])

# Using a namedtuple class to instantiate a new namedtuple object
# pixel = Pixel(255, 0, 0)
pixel = Pixel(red=255, green=50, blue=0)
print(pixel)

# Get a tuple of field names
print(Pixel._fields)