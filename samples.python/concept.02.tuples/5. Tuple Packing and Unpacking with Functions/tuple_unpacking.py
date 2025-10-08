def compute_volume(length, width, height):
    return length * width * height

dimensions = (10, 5, 2)
length, width, height = dimensions

volume = compute_volume(length, width, height)
print("Volume:", volume)