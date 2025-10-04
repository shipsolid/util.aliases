from collections import Counter

stock = Counter({
    "smartphone": 13,
    "keyboard": 6,
    "monitor": 1,
    "laptop": -2,
    "tablet": -3
})

# Only return items with non-negative counts (what's in stock)
available_inventory = +stock
print("Available inventory:\t", available_inventory)

# Only return items with negative counts, but flip them to positive (shortages/backorders)
backordered_items = -stock
print("Backordered items:\t", backordered_items)