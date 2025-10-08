from collections import namedtuple

Dog = namedtuple("Dog", ["name", "age", "location"])
dog = Dog("Hachiko", 11, "Shibuya Station")

# Create a new Dog instance with the updated value
dog = dog._replace(name="Scooby-Don't")
print(dog)