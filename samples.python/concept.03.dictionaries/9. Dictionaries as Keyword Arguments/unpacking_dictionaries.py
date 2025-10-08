def greet(greeting, name):
    print(f"{greeting}, {name}!")

# Positional arguments
greet("Welcome", "Guest")

# Keyword Arguments
greet(greeting="Good evening", name="Visitor")

kwargs = {
    "greeting": "Hello",
    "name": "Traveler"
}

greet(**kwargs)
# This is equal to calling:
# greet(greeting=kwargs["greeting"], name=kwargs["name"])