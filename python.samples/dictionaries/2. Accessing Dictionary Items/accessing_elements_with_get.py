config = {
    "resolution": "1920x1080",
    "fullscreen": True
}

resolution = config.get("resolution", "[MISSING: Set default resolution]")
print("Resolution:", resolution)

brightness = config.get("brightness", "[MISSING: Set default brightness]") # Default to a warning message
print("Brightness:", brightness)

language = config.get("language", "en")  # Default to English
print("Selected language:", language)

print("Theme:", config.get("theme")) # This non-existent key will NOT raise a KeyError