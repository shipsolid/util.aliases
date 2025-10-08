from collections import Counter

# Books checked out from the library on two different days
day1_checkouts = Counter({"fiction": 7, "non_fiction": 4, "mystery": 5, "sci_fi": 2})
day2_checkouts = Counter({"fiction": 5, "non_fiction": 6, "mystery": 8, "fantasy": 3})

total_checkouts = day1_checkouts + day2_checkouts # Total Checkouts
print("Total checkouts (day1 + day2):")
print(total_checkouts)

# The negative value for 'fiction' is discarded
more_on_day2 = day2_checkouts - day1_checkouts # Increase in day 2 compared to day 1
print("Checkouts that increased on day 2 (day2 - day1):")
print(more_on_day2)