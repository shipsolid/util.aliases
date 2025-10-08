config = {
    "resolution": "1920x1080",
    "fullscreen": True
}

try:
    print(config["brightness"])  # This key doesn't exist
except KeyError:
    print("The 'brightness' setting is missing.")