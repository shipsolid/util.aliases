status_messages = {
    200: "OK",
    404: "Not Found",
    500: "Server Error",
    403: "Forbidden"
}

for code, message in status_messages.items():
    print(f"{code}: {message}")