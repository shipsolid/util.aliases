sensors = {
    "temperature": "22°C"
}

# If the default value is not provided for non-existent keys, pop() will raise a KeyError
value = sensors.pop("pressure", "Preassure is not found")
print(value)