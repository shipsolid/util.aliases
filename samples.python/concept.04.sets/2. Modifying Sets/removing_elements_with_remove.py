planets = {"earth", "mars", "venus"}

planets.remove("mars")
print(planets)

# Removing non-existent element will raise a KeyError
try:
    planets.remove("jupiter")
except KeyError as e:
    print(f"Error removing planet: {e}")