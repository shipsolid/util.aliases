# Temperature readings from different regions
north_region = (21.5, 23.0)
south_region = (19.8, 22.1)
east_region = (21.5, 24.0)

# Concatenation
all_readings = north_region + south_region + east_region
print("Concatenated Temperatures:", all_readings)

# Iteration through readings
print("\nTemperature Analysis:")
for temp in all_readings:
    print(f"- Recorded {temp}°C")

# Count and index operations
target_temp = 21.5
print(f"\nTemperature Statistics for {target_temp}°C:")
print("Occurrences:", all_readings.count(target_temp))
print("First recorded at index:", all_readings.index(target_temp))

# Membership check
user_query = 22.1
if user_query in all_readings:
    print(f"\n{user_query}°C was recorded in our data")
else:
    print(f"\n{user_query}°C was not found in our records")

# Aggregate functions
print("\nSystem-wide Statistics:")
print("Maximum Temperature:", max(all_readings))
print("Minimum Temperature:", min(all_readings))
print("Total Temperature Sum:", sum(all_readings))
# You can also use any() and all()