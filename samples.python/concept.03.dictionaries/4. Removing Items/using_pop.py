sensors = {
    "temperature": "22°C",
    "humidity": "60%",
    "pressure": "1013 hPa"
}
# pop() will return the value of the removed element
value = sensors.pop("pressure")

print(value)
print(sensors) 