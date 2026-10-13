from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Remove URLs from the text
    clean_text = re.sub(r'http\S+', '', text)
    # Remove any non-alphabetic characters and convert to lowercase
    clean_text = re.sub(r'[^a-zA-Z\s]', ' ', clean_text).lower()
    # Split the text into words
    words = clean_text.split()
    # Check if there are any words left after removing URLs and non-alphabetic characters
    if not words:
        raise ValueError("No words available to generate a word cloud after removing URLs.")
    # Generate the word cloud
    wordcloud = WordCloud(width=800, height=400).generate(clean_text)
    # Plot the word cloud
    plt.figure(figsize=(10, 5))
    plt.imshow(wordcloud, interpolation='bilinear')
    plt.axis('off')
    plt.show()
    return wordcloud


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a word cloud from text after removing URLs and plot it.
#     The function should raise the exception for: ValueError("No words available to generate a word cloud after removing URLs."): If there are no words available to generate a word cloud after removing URLs.
#     The function should output with:
#         WordCloud object: The generated word cloud.
#     You should write self-contained code starting with:
#     ```
#     import re
#     from wordcloud import WordCloud
#     import matplotlib.pyplot as plt
#     def task_func(text):
#     ```
