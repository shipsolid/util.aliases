from collections import Counter

# Simulated voting poll: each item is a vote for a programming language
votes = [
    "Python", "JavaScript", "Python", "Rust", "Python", "Go",
    "JavaScript", "Go", "Rust", "Rust", "Rust", "Java", "Go"
]
vote_counts = Counter(votes)

print(vote_counts)
print("Votes for Python:", vote_counts["Python"])
print("Votes for Go:", vote_counts["Go"])
print("Votes for Elixir (not in list):", vote_counts["Elixir"])