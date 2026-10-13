from datetime import timedelta
import re
from collections import Counter
import matplotlib.pyplot as plt
def task_func(text):
    # Remove punctuation and lowercase
    cleaned_text = re.sub(r'[^a-zA-Z]', '', text.lower(),
         flags=re.IGNORECASE).split()
    
    # Create a Counter object from the split words
    word_counter = Counter(cleaned_text)
    
    # Get the top 10 most common words and their counts
    top_ten = word_counter.most_common(10)
    
    # Create a bar chart of the top 10 words
    plt.figure(figsize=(10, 6))
    plt.bar([word for word, count in top_ten],
            [count for word, count in top_ten],
            color='blue')
    plt.xlabel('Word')
    plt.ylabel('Count')
    plt.title('Top 10 Most Common Words')
    
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
