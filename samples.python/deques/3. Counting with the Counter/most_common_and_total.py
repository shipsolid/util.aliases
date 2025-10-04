# Visits to web pages
visits = ["home", "about", "contact", "home", "about", "home", "profile", "home", "about", "contact"]
visit_counts = Counter(visits)

# Get the top 2 most visited pages (most_common(n) returns the n highest-count items)
most_visited = visit_counts.most_common(2)
print("Most visited pages:", most_visited)

# Get all visited pages sorted by count
# Then we can use slicing to reverse them and limit the result to last two items
least_visited = visit_counts.most_common()[:-3:-1]
print("Least visited pages:", least_visited)

# Get the sum of all counts (total visits)
print("Total visits:", visit_counts.total())