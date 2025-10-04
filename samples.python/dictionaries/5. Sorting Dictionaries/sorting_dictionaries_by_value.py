prices = {
    "keyboard": 29.99,
    "monitor": 189.99,
    "mouse": 19.99,
    "chair": 120.00
}

print(prices.items())

# item[1] from the key argument refers to the view object returned from items()
sorted_prices = dict(sorted(prices.items(), key=lambda item: item[1]))

print(sorted_prices)