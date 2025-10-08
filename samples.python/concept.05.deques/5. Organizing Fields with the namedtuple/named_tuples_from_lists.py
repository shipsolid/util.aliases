from collections import namedtuple

Pixel = namedtuple("Pixel", "red green blue")

image_pixel_data = [
    [255, 43, 22],
    [230, 44, 23],
    [230, 44, 23]
]

sprite = [Pixel._make(pixel) for pixel in image_pixel_data]
print(sprite)