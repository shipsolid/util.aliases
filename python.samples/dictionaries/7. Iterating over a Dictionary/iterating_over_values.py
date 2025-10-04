status_messages = {
    200: "OK",
    404: "Not Found",
    500: "Server Error",
    403: "Forbidden"
}

for message in status_messages.values():
    print("Message:", message)


# This is less efficient and less explicit
for code in status_messages:
    print("Message:", status_messages[code])