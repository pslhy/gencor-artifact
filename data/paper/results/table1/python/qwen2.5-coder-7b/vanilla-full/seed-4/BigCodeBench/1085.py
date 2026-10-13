from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Lowercase the text
    text = text.lower()
    
    # Remove punctuation using regex
    text = re.sub(r'[^\w\s]', '', text)
    
    # Split into words
    words = text.split()
    
    # Count word frequencies
    word_counts = Counter(words)
    
    # Get the top 10 most common words
    top_10 = word_counts.most_common(10)
    
    # Prepare data for plotting
    labels, values = zip(*top_10)
    
    # Create bar chart
    fig, ax = plt.subplots()
    ax.bar(labels, values, color='blue')
    
    # Set title and labels
    ax.set_title('Top 10 Most Common Words')
    ax.set_xlabel('Words')
    ax.set_ylabel('Counts')
    
    # Rotate x-axis labels for better visibility
    ax.set_xticklabels(labels, rotation=45)
    
    return top_10, ax


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
