# Set will remove all duplicate elements
my_set = {1, 1, 2, 2, 3, 3}
print("my_set:", my_set)

# You can initialize sets with elements from other iterable structures
my_tuple = ("a", "b", "c")
set_from_tuple = set(my_tuple)
print("set_from_tuple:", set_from_tuple)

# This can be useful for removing duplicate elements 
visitor_id_list = ["user123", "user456", "user123", "user789", "user456", "user101"]
unique_visitors_set = set(visitor_id_list)
print("unique_visitors_set:", unique_visitors_set)