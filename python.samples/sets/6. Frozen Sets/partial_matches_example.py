# Set up recipes (ingredients stored in frozensets)
recipes = {
    "Cake": frozenset(["flour", "sugar", "eggs"]),
    "Pancakes": frozenset(["flour", "milk", "eggs"]),
    "Omelette": frozenset(["eggs", "milk", "cheese"]),
}

# Ingredients you have at home
available_ingredients = {"flour", "milk"}

# Find possible recipes you can ALMOST make
for recipe_name, ingredients_needed in recipes.items():
    missing_ingredients = ingredients_needed - available_ingredients
    if len(missing_ingredients) <= 1:
        print(f"You can almost make {recipe_name}! Missing: {missing_ingredients}")