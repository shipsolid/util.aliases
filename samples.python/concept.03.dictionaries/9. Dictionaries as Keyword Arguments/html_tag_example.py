def html_tag(tag, content, **kwargs):
    """
    Returns a string representation of an HTML tag.
    
    :param tag: The HTML tag name.
    :param content: The content inside the tag.
    :param kwargs: Optional HTML attributes for the tag.
    """
    print("kwargs:", kwargs)
    attributes = ' '.join([f'{key}="{value}"' for key, value in kwargs.items()])
    return f'<{tag} {attributes}>{content}</{tag}>'

# Example usage
print(html_tag('a', 'Click Here', href="https://example.com", style="color: red;"))