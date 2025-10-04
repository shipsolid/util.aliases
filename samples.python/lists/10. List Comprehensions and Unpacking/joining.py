# Parts of a file path
folders = ["home", "user", "documents", "project"]

# For Linux/macOS: use '/'
linux_path = "/".join(folders)
print("Linux/macOS path:", linux_path)

# For Windows: use '\\' (escaped backslash)
windows_path = "\\".join(folders)
print("Windows path:    ", windows_path)

# Splitting a path back into parts
split_folders = linux_path.split("/")
print("Split folders:   ", split_folders)