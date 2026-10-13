from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Remove URLs
    text = re.sub(r'(https?:\/\/[^\s]+)', '', text)
    # Check if there are any words left
    if not text.split():
        raise ValueError("No words available to generate a word cloud after removing URLs.")
    # Generate word cloud
    wordcloud = WordCloud(width=800, height=400).generate(text)
    # Plot word cloud
    plt.imshow(wordcloud)
    plt.axis("off")
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
