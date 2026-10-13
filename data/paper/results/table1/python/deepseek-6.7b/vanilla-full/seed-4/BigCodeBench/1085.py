from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Covert everything to lower case.
    text = text.lower()
    # Remove all punctuation.
    text = re.sub(r'[^\w\s]', '', text)
    # Split the text into a list of words.
    words = text.split()
    # Count the frequency of each word.
    word_counts = Counter(words)
    # Get the 10 most common words and their counts.
    top_10_words = word_counts.most_common(10)
    # Create a bar chart.
    words, counts = zip(*top_10_words)
    fig, ax = plt.subplots()
    ax.bar(words, counts)
    ax.set_xlabel('Words')
    ax.set_ylabel('Counts')
    ax.set_title('Count of Most Common Words')
    return top_10_words, ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
