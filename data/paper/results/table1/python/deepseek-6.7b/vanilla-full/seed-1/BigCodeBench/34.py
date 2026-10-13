from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Removing URLs from the text using regular expression
    url_pattern = re.compile(r'http\S+|www\S+|https\S+')
    text = url_pattern.sub(r'', text)

    # Splitting the text into words
    words = text.split()

    # Removing any empty strings in the list
    words = list(filter(None, words))

    # Checking if there are no words left to create a word cloud
    if not words:
        raise ValueError("No words available to generate a word cloud after removing URLs.")

    # Joining the words back into a string and generating a word cloud
    text = ' '.join(words)
    word_cloud = WordCloud(width=800, height=400, max_words=200).generate(text)

    # Displaying the word cloud
    plt.figure(figsize=(10, 5))
    plt.imshow(word_cloud, interpolation='bilinear')
    plt.axis('off')
    plt.show()

    return word_cloud


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
