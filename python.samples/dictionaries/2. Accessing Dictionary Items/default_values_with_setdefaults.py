user = {
    "username": "data_builder"
}

user_role = user.setdefault("role", "viewer") # If the key doesn't exist, add it with the default value
print("User's role:", user_role)

username = user.setdefault("username", "data_tester") # If the key exists, return its corresponding value
print("Username:", username)

print(user)