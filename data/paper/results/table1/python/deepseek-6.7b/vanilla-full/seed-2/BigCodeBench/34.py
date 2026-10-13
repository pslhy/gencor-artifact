from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Remove URLs from text
    url_pattern = re.compile(r'http\S+|www\S+|https\S+')
    text = url_pattern.sub(r'', text)

    # Remove punctuation and convert to lowercase
    text = re.sub(r'[^\w\s]', '', text.lower())

    # Split text into words
    words = text.split()

    # Remove empty strings from list
    words = list(filter(None, words))

    # Raise exception if no words are available
    if not words:
        raise ValueError("No words available to generate a word cloud after removing URLs.")

    # Generate word cloud
    wordcloud = WordCloud(width=800, height=800, max_font_size=200, background_color='white').generate(' '.join(words))
    
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
