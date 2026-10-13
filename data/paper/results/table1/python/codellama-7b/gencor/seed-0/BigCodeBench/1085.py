import numpy as np

from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):

    # Remove punctuation and convert text to lowercase
    text = re.sub(r'[^\w\s]', '', text).lower()

    # Split text into words
    words = text.split()

    # Create a Counter object to count the frequencies of each word
    word_freq = Counter(words)

    # Get the top 10 most common words and their frequencies
    top_words = word_freq.most_common(10)

    # Create a Bar chart using Matplotlib
    fig, ax = plt.subplots()
    y_pos = np.arange(len(top_words))
    ax.barh(y_pos, [word[1] for word in top_words], align='center')
    ax.set_yticks(y_pos)
    ax.set_yticklabels([word[0] for word in top_words])
    ax.invert_yaxis()
    ax.set_xlabel('Count')
    ax.set_ylabel('Word')
    ax.set_title('Top 10 Most Common Words')

    # Return the list of tuples and the Axes object
    return top_words, ax


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
