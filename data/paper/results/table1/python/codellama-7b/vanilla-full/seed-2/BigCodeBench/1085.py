from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Lowercase the text
    text = text.lower()
    
    # Remove punctuation from the text
    text = re.sub('[^a-zA-Z0-9\s]', '', text)
    
    # Split the text into individual words
    words = text.split()
    
    # Create a Counter object to keep track of word frequencies
    word_counts = Counter(words)
    
    # Get the top 10 most common words
    top_words = word_counts.most_common(10)
    
    # Plot the top 10 words as a bar chart
    fig, ax = plt.subplots()
    ax.bar(range(10), [count for word, count in top_words])
    ax.set_xticks(range(10))
    ax.set_xticklabels([word for word, count in top_words])
    ax.set_xlabel('Word')
    ax.set_ylabel('Frequency')
    ax.set_title('Most Common Words')
    
    # Return the list of tuples containing the 10 most common words and their counts
    return top_words


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
