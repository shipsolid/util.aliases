def compute_volume(length, width, height):
    return length * width * height

dimensions = (10, 5, 2)

# Unpacking with *
volume = compute_volume(*dimensions)
print("Volume:", volume)