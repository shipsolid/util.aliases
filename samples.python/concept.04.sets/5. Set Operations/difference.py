# Interests of Group A
group_a_interests = {"hiking", "photography", "traveling", "cooking"}
# Interests of Group B
group_b_interests = {"traveling", "gaming", "cooking", "painting"}

# Difference -> Interests that are in Group A but not in Group B.
print("What interests are unique to Group A?")
print(group_a_interests.difference(group_b_interests))
# Operator alternative:
print(group_a_interests - group_b_interests)

# Difference -> Interests that are in Group B but not in Group A.
print("What interests are unique to Group B?")
print(group_b_interests.difference(group_a_interests))
# Operator alternative:
print(group_b_interests - group_a_interests)