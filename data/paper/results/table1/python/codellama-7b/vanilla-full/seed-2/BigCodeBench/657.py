from datetime import timedelta
import re
import nltk
from gensim.models import Word2Vec
# Constants
ALPHANUMERIC = re.compile('[\W_]+')
def task_func(texts, stopwords=None):
    # Clean text
    texts_clean = [re.sub(ALPHANUMERIC, ' ', text) for text in texts]
    # Convert to lowercase
    texts_clean = [text.lower() for text in texts_clean]
    # Remove stop words
    if stopwords is not None:
        texts_clean = [[word for word in text.split() if word.lower() not in stopwords] for text in texts_clean]
    # Convert to bag-of-words format
    texts_bag_of_words = [[word for word in text.split()] for text in texts_clean]
    # Train Word2Vec model
    word2vec_model = Word2Vec(texts_bag_of_words, size=100, window=5, min_count=5, workers=4)
    return word2vec_model


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generate word vectors from a list of texts using the gensim Word2Vec model and nltk.corpus.stopwords. The texts are first cleaned by removing all non-alphanumeric characters except space, lowercased, and stop words are removed.
#     The function should output with:
#         Word2Vec: A trained Word2Vec model.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import nltk
#     from gensim.models import Word2Vec
#     # Constants
#     ALPHANUMERIC = re.compile('[\W_]+')
#     def task_func(texts, stopwords=None):
#     ```
