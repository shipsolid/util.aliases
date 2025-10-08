# Mapping ingredients to recipes
recipes = {
    frozenset(["flour", "sugar", "eggs"]): "Cake",
    frozenset(["flour", "milk", "eggs"]): "Pancakes",
}

# Search by available ingredients
available = frozenset(["milk", "eggs", "flour"]) # Order doesn't have to match in sets
print(recipes.get(available))