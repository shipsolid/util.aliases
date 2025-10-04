my_skills = {"Python", "SQL", "HTML", "Java", "C++"}
print("My skills:", my_skills)

# Skills required for a job offer
job_required_skills = {"Python", "SQL", "AWS"}
print("Job required skills:", job_required_skills)

# Using intersection_update() method (Intersection)
# Only leave the skills that are also present in the job_required_skills
my_skills.intersection_update(job_required_skills)
print("\nRequired skills from the job that I have (intersection_update):", my_skills)

# Operator alternative:
# my_skills = my_skills & job_required_skills
# Or in short:
# my_skills &= job_required_skills