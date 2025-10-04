# Skills I currently have
my_skills = {"Python", "SQL", "HTML"}
print("My initial skills:", my_skills)

# New skills from an online course
course_skills = {"Python", "Java", "C++"}
print("Skills that I can learn from the course:", course_skills)

# Using update() method (Union)
# Include all of the skills from my_skills and course_skills
my_skills.update(course_skills)
print("\nMy skills after taking the course (update):", my_skills)

# Operator alternative:
# my_skills = my_skills | course_skills
# Or in short:
# my_skills |= course_skills