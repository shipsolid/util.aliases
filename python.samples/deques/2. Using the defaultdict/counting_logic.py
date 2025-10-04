from collections import defaultdict

# Sample list of letters
letters = ["a", "b", "a", "c", "b", "a"]

letter_counts = defaultdict(int) # int() will return 0

for letter in letters:
    letter_counts[letter] += 1

print(letter_counts)