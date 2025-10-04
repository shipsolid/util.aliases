from collections import defaultdict

files = [
    ("report.docx", "document"),
    ("summary.pdf", "document"),
    ("budget.xlsx", "spreadsheet"),
    ("data.csv", "spreadsheet"),
    ("photo.jpg", "image"),
    ("diagram.png", "image"),
    ("photo.jpg", "image")  # duplicate file
]

# Group files by type with unique entries
grouped_files = defaultdict(set)

for filename, file_type in files:
    grouped_files[file_type].add(filename)

print(dict(grouped_files))