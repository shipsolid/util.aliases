user_preferences = {
    "userX": {
        "email": "userx@example.com",
        "preferences": {
            "theme": "dark",
            "notifications": True
        }
    },
    "userY": {
        "email": "usery@example.com",
        "preferences": {
            "theme": "light",
            "notifications": False
        }
    }
}
print("User X theme:", user_preferences["userX"]["preferences"]["theme"])