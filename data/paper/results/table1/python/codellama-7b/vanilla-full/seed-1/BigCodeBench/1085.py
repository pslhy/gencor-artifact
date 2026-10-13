from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Remove punctuation and convert to lowercase
    text = re.sub(r'[^\w\s]', '', text.strip().lower())
    # Split into individual words
    words = re.split(r'\W+', text)
    # Create a Counter object with the words as keys and counts as values
    counter = Counter(words)
    # Sort the Counter object in descending order of counts
    sorted_counter = sorted(counter.items(), key=lambda x: x[1], reverse=True)
    # Take the top 10 most common words
    top_10 = sorted_counter[:10]
    # Create a bar chart of the top 10 words
    ax = plt.axes()
    ax.bar([w[0] for w in top_10], [w[1] for w in top_10])
    ax.set(xlabel='Word', ylabel='Count')
    ax.set_title('Most Common Words')
    return top_10, ax


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
