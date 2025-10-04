from collections import Counter
import random

# Number of purchased tickets
tickets = Counter({
    "participant_01": 5,
    "participant_02": 2,
    "participant_03": 3
})

# elements() expands the counts into a list 
# where each item appears as many times as its count
ticket_pool = list(tickets.elements())
print("Ticket pool:", ticket_pool)

# Simulating chance weighted by frequency
winner = random.choice(ticket_pool)
print("\nWinner:", winner)