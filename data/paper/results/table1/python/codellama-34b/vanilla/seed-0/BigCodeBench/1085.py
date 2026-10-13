from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):

    # Lowercase and remove punctuation from text
    text = re.sub('[^a-zA-Z]','', text)
    text = list(filter(None, text.lower())

    # Split text into list of words
    words = text.split(' ')

    # Create Counter object of words
    word_counts = Counter(words)

    # Filter list of tuples to only include the top 10 words
    top_ten = list(filter(lambda x: word_counts[x[0]] >= 10, words.items()))

    # Create bar plot of top 10 words
    plt.bar(width=0.7, height=[x[1] for x in top_ten], color="slateblue")
    plt.ylabel("Count")
    plt.title("Top 10 Words in Text")
    plt.xlabel("Word")
    plt.show()

    return top_ten, plt.gca()


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
