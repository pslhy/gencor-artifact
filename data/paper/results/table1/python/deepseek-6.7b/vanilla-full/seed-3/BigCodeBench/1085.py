from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # convert to lowercase
    text = text.lower()
    # remove punctuation
    text = re.sub(r'[^\w\s]','',text)
    # split into words
    words = text.split()
    # count words
    counter = Counter(words)
    most_common = counter.most_common(10)

    words = [word for word,_ in most_common]
    counts = [count for _,count in most_common]
    
    # plot the graph
    fig, ax = plt.subplots(figsize=(10,5))
    ax.bar(words,counts)
    ax.set_xlabel("Words")
    ax.set_ylabel("Count")
    ax.set_title("Top 10 most common words")
    return most_common, ax


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
