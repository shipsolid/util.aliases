# Current queue of print jobs
print_queue = ["Invoice.pdf", "Poster.png"]

# New batch of jobs arrives
new_jobs = ["Contract.docx", "Blueprint.dwg"]

# Use the extend method to add multiple items to an existing list
print_queue.extend(new_jobs)

print("Updated print queue:", print_queue)