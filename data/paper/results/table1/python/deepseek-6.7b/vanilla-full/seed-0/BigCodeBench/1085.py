from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # lowercasing
    text = text.lower()
    # removing punctuation
    text = re.sub(r'[^\w\s]', ' ', text)
    # splitting into words
    words = text.split()

    # count frequency of each word
    word_counts = Counter(words)

    # get the 10 most common words
    top_10_words = word_counts.most_common(10)

    # Create figure and axes
    fig, ax = plt.subplots()

    # Plotting the bar chart
    words, counts = zip(*top_10_words)
    ax.bar(words, counts)

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
