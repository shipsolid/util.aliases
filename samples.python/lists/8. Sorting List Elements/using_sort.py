files = ["log.txt", "config.txt", "error.txt"]
temps = [18.5, 21.0, 19.8, 23.1]

# Sort alphabetically, modifies original list
files.sort()
# Sort in ascending order
temps.sort()
print("Alphabetical file order:", files)
print("Temperatures from lowest to highest:", temps)

files.sort(reverse=True)
temps.sort(reverse=True)
print("Alphabetical file order in reverse:", files)
print("Temperatures from highest to lowest:", temps)