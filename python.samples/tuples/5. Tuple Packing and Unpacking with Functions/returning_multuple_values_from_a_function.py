def min_max(numbers):
    return min(numbers), max(numbers)

n = [1, 20, 33, 401, 5]
min_result, max_result = min_max(n)
print(f"Min is {min_result} and max is {max_result}")