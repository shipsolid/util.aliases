tools = {"hammer", "wrench", "screwdriver"}

tools.discard("wrench")
print(tools)

tools.discard("drill")  # No error even though 'drill' is not in the set
print(tools)