from collections import Counter

# Initial stock of electronic devices
stock = Counter({"laptop": 5, "smartphone": 8, "tablet": 4, "monitor": 3,"keyboard": 6})
print("Initial stock:\t\t", stock)

# update() adds to existing counts, it doesn't overwrite keys
monthly_delivery = {"laptop": 3, "smartphone": 5}
stock.update(monthly_delivery)
print("Stock after delivery:\t", stock)

# subtract() reduces counts, values can be negative
orders = {"laptop": 10, "tablet": 7, "monitor": 2}
stock.subtract(orders)
print("Stock after orders:\t", stock)