from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # remove punctuation
    text = re.sub("[^\w\s]", "", text.lower())

    # split text into individual words
    words = text.split()

    # calculate frequencies of all words
    word_counts = Counter(words)

    # plot the top 10 most common words
    top_10_words = word_counts.most_common(10)
    fig = plt.gca()
    fig.bar(range(len(top_10_words)), [word_counts[word] for word, count in top_10_words], tick_label=[word for word, count in top_10_words])
    plt.xticks(rotation=45)
    plt.xlabel("Word")
    plt.ylabel("Frequency")
    plt.title("Top 10 Most Common Words")
    plt.tight_layout()
    return top_10_words, plt

text = open("hamlet.txt").read()
top_10_words, plt = task_func(text)


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
