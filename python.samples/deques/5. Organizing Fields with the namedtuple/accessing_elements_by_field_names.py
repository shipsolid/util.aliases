from collections import namedtuple

Pixel = namedtuple("Pixel", "red green blue")
pixel = Pixel(red=255, green=50, blue=0)

print("Accessing values by indicies:")
print(pixel[0])
print(pixel[1])
print(pixel[2])

print("Accessing values by field names with the dot syntax:")
print(pixel.red)
print(pixel.green)
print(pixel.blue)