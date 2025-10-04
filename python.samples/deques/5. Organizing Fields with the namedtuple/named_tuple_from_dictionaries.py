from collections import namedtuple

Pixel = namedtuple("Pixel", "red green blue")

# Use dictionary unpacking to unpack key-value pairs to keyword arguments
pixel = Pixel(**{"red": 255, "green": 50, "blue": 0})
# Unpacking a dictionary results in:
# pixel = Pixel(red=255, green=50, blue=0)
print(pixel)

# Turn the namedtuple instance to a dictionary
print(pixel._asdict())