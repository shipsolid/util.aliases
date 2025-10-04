def greet(greeting, name):
    print(f"{greeting}, {name}!")

wrong_kwargs = {"salutation": "Hey", "name": "Guest"}  # 'salutation' doesn't match parameter name

try:
    greet(**wrong_kwargs)
except TypeError as e:
    print("TypeError caught:", e)