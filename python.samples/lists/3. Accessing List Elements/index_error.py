# List of scheduled meetings
meetings = ["Team Sync", "Client Call", "Project Review"]

try:
    # Attempt to access a meeting that doesn't exist
    print("Meeting 5:", meetings[3])
except IndexError:
    print("That meeting does not exist in the list.")