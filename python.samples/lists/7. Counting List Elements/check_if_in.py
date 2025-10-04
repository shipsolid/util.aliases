# List of enabled features
features = ["dark_mode", "notifications", "autosave"]

# Only get index if the feature exists
if "autosave" in features:
    position = features.index("autosave")
    print("Autosave found at position:", position)
else:
    print("Autosave not enabled.")