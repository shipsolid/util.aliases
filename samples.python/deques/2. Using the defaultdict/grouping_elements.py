from collections import defaultdict

# Sample list of files, each as (filename, filetype)
files = [
    ("report.docx", "document"),
    ("summary.pdf", "document"),
    ("budget.xlsx", "spreadsheet"),
    ("data.csv", "spreadsheet"),
    ("photo.jpg", "image"),
    ("diagram.png", "image")
]

# Group files by type
grouped_files = defaultdict(list)

for filename, file_type in files:
    grouped_files[file_type].append(filename)

print(dict(grouped_files))