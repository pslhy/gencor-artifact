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
    # Remove punctuation
    text = re.sub(r'[^a-zA-Z\s]', '', text.lower())
    
    # Split into individual words
    word_list = re.split('\s+', text)
    
    # Count the frequency of each word
    word_counts = Counter(word_list)
    top_10_words = word_counts.most_common(10)
    
    # Sort the top 10 words by frequency
    top_10_words = sorted(top_10_words, key=lambda x: x[1], reverse=True)
    
    # Bar chart of top 10 words
    x_axis = [x[0] for x in top_10_words]
    y_axis = [y[1] for y in top_10_words]
    plt.bar(x_axis, y_axis)
    plt.title('Most Common Words in Text')
    plt.xlabel('Word')
    plt.ylabel('Frequency')
    plt.show()
    return top_10_words

