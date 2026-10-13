from datetime import timedelta
import re
from wordcloud import WordCloud
import matplotlib.pyplot as plt
def task_func(text):
    # Remove URLs
    text = re.sub(r"http\S+", "", text)
    # Remove punctuation
    text = " ".join([word.strip(string.punctuation) for word in text.split()])
    # Remove numbers
    text = " ".join([word.strip(string.digits) for word in text.split()])
    # Remove stopwords
    stops = set(stopwords.words("english"))
    text = " ".join([word for word in text.split() if word.lower() not in stops])
    # Generate word cloud
    wordcloud = WordCloud(width=800, height=500, background_color="white").generate(text)
    # Plot word cloud
    plt.figure(figsize=(10, 8))
    plt.imshow(wordcloud, interpolation="bilinear")
    plt.axis("off")
    plt.show()
    # Return word cloud
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
