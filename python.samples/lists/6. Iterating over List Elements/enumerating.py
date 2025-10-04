# List of items in a delivery package
package_contents = ["Keyboard", "Mouse", "Monitor"]

# Label each item with its position
for i, item in enumerate(package_contents, 1):
    print(f"Item {i}: {item}")