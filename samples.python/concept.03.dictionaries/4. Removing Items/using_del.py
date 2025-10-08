sensors = {
    "temperature": "22°C",
    "humidity": "60%",
    "pressure": "1013 hPa"
}

# If the key doesn't exist, del will raise a KeyError
del sensors["humidity"]

print(sensors)