http_response = [200, "OK", "Data loaded successfully", "Time: 0.32s"]

status_code, *message_parts = http_response

print("Status Code:", status_code)
print("Message:", message_parts)