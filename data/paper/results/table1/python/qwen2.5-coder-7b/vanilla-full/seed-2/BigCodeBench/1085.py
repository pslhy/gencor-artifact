from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    words = re.findall(r'\b\w+\b', text.lower())
    word_count = Counter(words)
    most_common_words = word_count.most_common(10)
    
    fig, axes = plt.subplots()
    words, counts = zip(*most_common_words)
    axes.bar(words, counts)
    axes.set_xlabel('Words')
    axes.set_ylabel('Frequency')
    axes.set_title('Top 10 Most Common Words')
    plt.xticks(rotation=45)
    plt.tight_layout()
    
    return most_common_words, axes


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
