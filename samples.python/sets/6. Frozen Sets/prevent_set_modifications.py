admin_permissions = frozenset(["read", "write", "delete"])
user_permissions = frozenset(["read"])

def can_do(permissions, action):
    return action in permissions

# Example usage:
print(can_do(admin_permissions, "delete"))
print(can_do(user_permissions, "delete"))

# This will raise an error:
# admin_permissions.add("export")  # AttributeError: 'frozenset' object has no attribute 'add'