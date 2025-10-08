permissions = ["read", "write", "delete", "export"]
default_permissions = dict.fromkeys(permissions, False)

print(default_permissions)