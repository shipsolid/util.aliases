from collections import defaultdict

# The default value will be an empty list
dd = defaultdict(list) # this is the list() constructor

dd["key1"].append(1) # "key1" doesn't exist yet, so defaultdict creates it with the value []
# This is equal to
# dd["key1"] = list()
# dd["key1].append(1)

# Even accessing non-existent keys will create them in the dictionary
print(dd["key3"])
print(dd)