# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Remove URLs from the text
    text = re.sub(r"http\S+", "", text)
    # Remove punctuation and extra whitespace
    text = re.sub(r'[^\w\s]', '', text).lower()
    text = re.sub(r'\s+', ' ', text)
    # Tokenize the text into individual words
    words = text.split()
    # Check if there are any words remaining
    if not words:
        raise ValueError("No words available to generate a word cloud after removing URLs.")
    # Join the words back into a sentence
    text = ' '.join(words)
    # Generate the word cloud
    wc = WordCloud(max_font_size=40).generate(text)
    plt.imshow(wc, interpolation='bilinear')
    plt.axis("off")
    plt.show()

