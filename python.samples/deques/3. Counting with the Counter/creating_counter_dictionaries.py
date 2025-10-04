from collections import Counter

letters = ["a", "c", "d", "a", "a", "b"]
counter_from_list = Counter(letters)
print(counter_from_list)

string_word = "consciousness"
counter_from_string = Counter(string_word)
print(counter_from_string)

# Provide initial counts of an existing group of objects
# counter_from_kwargs = Counter(a=10, b=12, c=11)
initial_data = {"a": 10, "b": 12, "c": 11}
counter_from_dict = Counter(initial_data)
print(counter_from_dict)