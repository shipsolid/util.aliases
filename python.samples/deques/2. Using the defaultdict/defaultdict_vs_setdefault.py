from collections import defaultdict

std_dict = {}
std_dict.setdefault("key", "Default")
print(std_dict)

# defaultdict only accepts callables as default_factory
dd = defaultdict(lambda: "Default")
dd["key"]
print(dd)