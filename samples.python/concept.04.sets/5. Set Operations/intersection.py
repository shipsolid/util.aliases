# Interests of Group A
group_a_interests = {"hiking", "photography", "traveling", "cooking"}
# Interests of Group B
group_b_interests = {"traveling", "gaming", "cooking", "painting"}

# Intersection -> Interests both groups share
print("What interests do both groups have in common?")
print(group_a_interests.intersection(group_b_interests))

# Operator alternative:
print(group_a_interests & group_b_interests)