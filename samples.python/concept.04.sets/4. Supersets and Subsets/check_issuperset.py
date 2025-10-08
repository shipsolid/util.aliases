# Set of available tools
my_tools = {"hammer", "wrench", "screwdriver", "pliers"}

# Tools needed for building a chair
chair_tools = {"hammer", "screwdriver"}

print("Do my tools cover everything needed to build the chair?")
print(my_tools.issuperset(chair_tools))

# Operator alternative:
# print(my_tools >= chair_tools)