from collections import deque

# Create a waitlist deque
waitlist = deque()

# Append new elements
def arrive(name, vip=False):
    if vip:
        waitlist.appendleft(name)
        print(f"VIP customer {name} added to the front of the waitlist.")
    else:
        waitlist.append(name)
        print(f"Customer {name} added to the end of the waitlist.")
    print(waitlist)

# Remove elements
def seat_customer():
    if waitlist:
        name = waitlist.popleft()
        print(f"Customer {name} is now being seated.")
    else:
        print("The waitlist is currently empty.")
    print(waitlist)

# Example usage
arrive("A")
arrive("B")
arrive("C", vip=True)  # VIP

seat_customer()  # Seats C
seat_customer()  # Seats A