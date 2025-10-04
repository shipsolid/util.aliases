# Files currently on my laptop
current_system_files = {"project.docx", "report.pdf", "photo1.jpg", "photo2.jpg"}
print("Current system files:", current_system_files)

# Files saved on my backup hard drive
backup_drive_files = {"project.docx", "report.pdf", "photo1.jpg", "photo3.jpg"}
print("Backup drive files:", backup_drive_files)

# Using symmetric_difference_update() method (Symmetric Difference)
# Only keep the files which do not appear in both locations
current_system_files.symmetric_difference_update(backup_drive_files)
print("\nFiles missing from backup or deleted from system (symmetric_difference_update):", current_system_files)

# Operator alternative:
# current_system_files = current_system_files ^ backup_drive_files
# Or in short:
# current_system_files ^= backup_drive_files