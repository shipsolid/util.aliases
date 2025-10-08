user_info = ["Alice", "Engineer", "Canada"]

# Too many variables
try:
    name, job, country, age = user_info
except ValueError as e:
    print("Too many variables:", e)

# Too few variables
try:
    name, job = user_info
except ValueError as e:
    print("Too few variables:", e)