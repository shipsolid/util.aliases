# Set of my ingredients
ingredients_at_home = {"flour", "sugar", "eggs", "milk"}

# Subset we need for pancakes
pancake_ingredients = {"flour", "milk"}

print("Are all the pancake ingredients available at my home?")
print(pancake_ingredients.issubset(ingredients_at_home))

# Operator alternative:
# print(pancake_ingredients <= ingredients_at_home)