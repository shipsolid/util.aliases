# Packing with *
def sum_numbers(*args):
    print("args:", args)
    return sum(args)

print("Sum:", sum_numbers(1, 2, 3))
print("Sum:", sum_numbers(1, 2, 3, 4, 5)) 