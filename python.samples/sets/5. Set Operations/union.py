# Interests of Group A
group_a_interests = {"hiking", "photography", "traveling", "cooking"}
# Interests of Group B
group_b_interests = {"traveling", "gaming", "cooking", "painting"}

# Union -> All unique interests from both groups combined
print("What are all the interests across both groups?")
print(group_a_interests.union(group_b_interests))

# Operator alternative:
print(group_a_interests | group_b_interests)