from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Lowercase the text
    text = text.lower()
    
    # Remove punctuation
    text = re.sub(r'[^\w\s]','',text)
    
    # Split the text into words
    words = text.split()
    
    # Calculate the frequency of each word
    words_count = Counter(words)
    
    # Get the top 10 most common words and their counts
    top_10_words_counts = words_count.most_common(10)
    
    # Generate the bar chart
    words, counts = zip(*top_10_words_counts)
    fig, ax = plt.subplots()
    ax.bar(words, counts)
    
    return list(top_10_words_counts), ax


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
