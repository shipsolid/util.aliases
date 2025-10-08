# Membership checking in sets is fast because sets use a hash table to quickly find elements without searching through all of them.

import time

# Create a big list and big set
big_list = list(range(1_000_000))
big_set = set(big_list)

# Element that doesn't exist
missing_element= -1

# Time membership check in list
start = time.time()
missing_element in big_list
end = time.time()
print(f"List membership took {end - start:.6f} seconds")

# Time membership check in set
start = time.time()
missing_element in big_set
end = time.time()
print(f"Set membership took  {end - start:.6f} seconds")