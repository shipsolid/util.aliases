status_messages = {
    200: "OK",
    404: "Not Found",
    500: "Server Error",
    403: "Forbidden"
}

for code in status_messages:
    print("Status code:", code)


# You can be more explicit with keys() method, but this is not a common practice anymore
for code in status_messages.keys():
    print("Status code:", code)