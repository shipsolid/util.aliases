rgb_color = (150, 100, 200)

# Attempt to change the second element
try:
    rgb_color[1] = 10
except TypeError as e:
    print("Error:", e)