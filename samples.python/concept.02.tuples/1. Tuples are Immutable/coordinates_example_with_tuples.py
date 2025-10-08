def calculate_distance(coord1, coord2):
    # A simple Euclidean distance calculation for demonstration
    return ((coord1[0] - coord2[0]) ** 2 + (coord1[1] - coord2[1]) ** 2) ** 0.5

# Coordinates as tuples
point_a = (40.7128, -74.0060)  # New York
point_b = (34.0522, -118.2437)  # Los Angeles

distance = calculate_distance(point_a, point_b)
print(f"Distance: {distance} units")