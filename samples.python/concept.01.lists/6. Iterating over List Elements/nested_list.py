# Nested lists
matrix = [
    [1, 2, 3],
    [4, 5, 6]
]

# Print each row of the matrix
for row in matrix:
    print("Row:", row)

# Print every element in the matrix, row by row
for row in matrix:
    for value in row:
        print("Value:", value)