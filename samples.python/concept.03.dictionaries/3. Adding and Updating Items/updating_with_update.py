global_settings = {
    "sampling_rate": 60,
    "units": "metric",
    "precision": 2
}

device_overrides = {
    "precision": 3,             # existing key
    "units": "imperial",        # existing key
    "calibration_offset": 0.05  # new key
}

global_settings.update(device_overrides)

print(global_settings)