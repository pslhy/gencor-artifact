from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # remove punctuation
    text = re.sub(r'[^a-zA-Z]', ' ', text)
    # lowercase
    text = text.lower()
    # split into words
    words = text.split()
    # create a counter object
    counter = Counter(words)
    # sort the words in descending order by count
    filtered_words = sorted(counter.items(), key=lambda x: x[1], reverse=True)
    # get the top 10 most common words
    top_words = filtered_words[:10]
    # create a bar chart
    fig, ax = plt.subplots()
    ax.bar(range(1, 11), [w for w, c in top_words], tick_label=[w for w, c in top_words])
    # format the chart
    ax.set_title("Top 10 Most Common Words")
    ax.set_ylabel("Frequency")
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
