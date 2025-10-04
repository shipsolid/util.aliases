records = (
    ("sensor1", 30),
    ("sensor2", 25),
    ("sensor3", 40),
)

sorted_by_value = tuple(sorted(records, key=lambda x: x[1]))
print("Sorted by sensor reading:", sorted_by_value)

products = (
    ("product_a", 120, 10),
    ("product_b", 200, 100),
    ("product_c", 150, 20),
) # (name, price, discount)

# Sort by final price after discount
sorted_by_final_price = tuple(sorted(products, key=lambda x: x[1] - x[2]))
print("Sorted by final price:", sorted_by_final_price)