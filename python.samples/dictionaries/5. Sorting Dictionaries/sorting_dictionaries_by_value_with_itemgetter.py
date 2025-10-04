from operator import itemgetter

prices = {
    "keyboard": 29.99,
    "monitor": 189.99,
    "mouse": 19.99,
    "chair": 120.00
}

sorted_prices_getter = dict(sorted(prices.items(), key=itemgetter(1)))
print("Sorted with itemgetter:", sorted_prices_getter)