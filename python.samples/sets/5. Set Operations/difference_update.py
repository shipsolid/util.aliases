my_skills = {"Python", "SQL"}
print("My skills:", my_skills)

# Skills trending in the industry
trending_skills = {"Python", "Rust", "C++", "AWS"}
print("Trending skills:", trending_skills)

# Using difference_update() method (Difference)
# Remove from my_skills anything that also appears in trending_skills
my_skills.difference_update(trending_skills)
print("\nMy skills which are not trending (difference_update):", my_skills)

# Operator alternative:
# my_skills = my_skills - trending_skills
# Or in short:
# my_skills -= trending_skills