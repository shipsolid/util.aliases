from collections import Counter

def is_anagram(word1, word2):
    return Counter(word1) == Counter(word2)

print('is_anagram("night", "thing"):', is_anagram("night", "thing"))