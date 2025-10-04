from collections import deque

# Create a limited-size history stack for browsers back button
history = deque(maxlen=5)

def visit_page(url):
    history.append(url)
    print("Visiting:", url)

def go_back():
    if history:
        current = history.pop()
        print("Going back from:", current)
        if history:
            print("Current page is now:", history[-1])
        else:
            print("No more pages in history.")
    else:
        print("No pages in history.")

# Example usage
visit_page("/home")
visit_page("/about")
visit_page("/contact")

go_back()  # contact → about
go_back()  # about → home