def generate_report(title, *sections):
    print(f"=== {title} ===")
    for i, section in enumerate(sections, 1):
        print(f"{i}. {section}")

generate_report("System Health Report",
                "CPU usage: 47%",
                "RAM usage: 68%",
                "Disk I/O: Normal")