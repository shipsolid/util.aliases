# File sizes in MB
file_sizes = {
    "report.pdf": 4,
    "photo.png": 2,
    "data.csv": 12
}

# Convert file sizes to KB
sizes_kb = {filename: size * 1024 for filename, size in file_sizes.items()}

print(sizes_kb)