config = {
    "resolution": "1920x1080",
    "fullscreen": True
}

# Check if the key is NOT present
if "brightness" not in config:
    print("The 'brightness' setting is missing.")
else:
    print("Brightness is:", config["brightness"])

# Check if the key is present
if "resolution" in config:
    print("Resolution is:", config["resolution"])
else:
    print("The 'resolution' setting is missing.")