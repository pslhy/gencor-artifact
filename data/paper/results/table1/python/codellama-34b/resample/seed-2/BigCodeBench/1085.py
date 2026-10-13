# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Analyzes the frequency of words in a given text after lowercasing, removing punctuation, splitting into words, and plots the top 10 most common words.
#     The function should output with:
#         list: A list of tuples containing the 10 most common words and their counts.
#         Axes: The matplotlib Axes object of the bar chart.
#     You should write self-contained code starting with:
#     ```
#     import re
#     from collections import Counter
#     import matplotlib.pyplot as plt
#     def task_func(text):
#     ```
from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Lowercase and remove punctuation from text
    text = text.lower()
    text = re.sub(r'[^a-z]', ' ', text)
    # Split text into individual words
    words = text.split()
    # Create a Counter object to keep track of word frequencies
    word_counts = Counter(words)
    # Extract the top 10 most common words
    most_common = word_counts.most_common(10)
    # Plot the bar chart
    plt.figure(figsize=(10,6))
    plt.bar(range(10), [count for word, count in most_common])
    plt.xticks(range(10), [word for word, count in most_common])
    plt.xlabel('Word')
    plt.ylabel('Count')
    plt.title('Most Common Words')
    plt.show()

