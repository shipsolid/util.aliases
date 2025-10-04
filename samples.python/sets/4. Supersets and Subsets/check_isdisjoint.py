# Set of known allergens
allergens = {"peanuts", "gluten", "soy", "dairy"}

# Ingredients in a chocolate bar
chocolate_bar_ingredients = {"cocoa", "sugar", "dairy", "vanilla"}
# Ingredients in a fruit salad
fruit_salad_ingredients = {"apple", "banana", "grapes", "melon"}

print("Is the chocolate bar free from allergens?")
print(allergens.isdisjoint(chocolate_bar_ingredients))

print("Is the fruit salad free from allergens?")
print(allergens.isdisjoint(fruit_salad_ingredients))