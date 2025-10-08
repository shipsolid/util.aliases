import copy

original = {
    "theme": "dark",
    "options": {"autosave": True}
}

deep_copy = copy.deepcopy(original)

deep_copy["options"]["autosave"] = False

print("original:", original)
print("deep_copy:", deep_copy)