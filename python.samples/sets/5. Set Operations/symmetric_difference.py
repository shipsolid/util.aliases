# Interests of Group A
group_a_interests = {"hiking", "photography", "traveling", "cooking"}
# Interests of Group B
group_b_interests = {"traveling", "gaming", "cooking", "painting"}

# Symmetric Difference -> Interests in either Group A or Group B, but not both
print("What interests are different between the groups (not shared)?")
print(group_a_interests.symmetric_difference(group_b_interests))

# Operator alternative:
print(group_a_interests ^ group_b_interests)