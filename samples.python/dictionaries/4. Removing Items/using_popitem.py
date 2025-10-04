sensors = {
    "temperature": "22°C",
    "humidity": "60%",
    "pressure": "1013 hPa"
}

# popitem() will remove and return the last key-value pair
last_element = sensors.popitem()

print(last_element)
print(sensors)  