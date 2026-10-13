import string

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
    stops = set(stopwords.words("english") + list(string.punctuation) + list(string.digits) +
                             list(string.whitespace) + [u'\u200b', u'\u200c', u'\u200d', u'\u2060', u'\ufeff', u'\u00bc',
                                                       u'\u00bd', u'\u2070', u'\u2074', u'\u2075', u'\u2076', u'\u2077',
                                                       u'\u2078', u'\u2079', u'\u207a', u'\u207F', u'\u2080', u'\u2081',
                                                       u'\u2082', u'\u2083', u'\u2084', u'\u2085', u'\u2086', u'\u2087',
                                                       u'\u2088', u'\u2089', u'\u208a', u'\u208b', u'\u208c', u'\u208d',
                                                       u'\u208e', u'\u208f', u'\u2090', u'\u2091', u'\u2092', u'\u2093',
                                                       u'\u2094', u'\u2095', u'\u2096', u'\u2097', u'\u2098', u'\u2099',
                                                       u'\u209a', u'\u209b', u'\u209c', u'\u209d', u'\u209e', u'\u209f',
                                                       u'\ufb00', u'\ufb01', u'\ufb02', u'\ufb03', u'\ufb04', u'\ufb05',
                                                       u'\ufb06', u'\ufb07', u'\ufb08', u'\ufb09', u'\ufb0a', u'\ufb0b',
                                                       u'\ufb0c', u'\ufb0d', u'\ufb0e', u'\ufb0f', u'\ufb10', u'\ufb11',
                                                       u'\ufb12', u'\ufb13', u'\ufb14', u'\ufb15', u'\ufb16', u'\ufb17',
                                                       u'\ufb18', u'\ufb19', u'\ufb1a', u'\ufb1b', u'\ufb1c', u'\ufb1d',
                                                       u'\ufb1e', u'\ufb1f', u'\ufb20', u'\ufb21', u'\ufb22', u'\ufb23',
                                                       u'\ufb24', u'\ufb25', u'\ufb26', u'\ufb27', u'\ufb28', u'\ufb29',
                                                       u'\ufb2a', u'\ufb2b', u'\ufb2c', u'\ufb2d', u'\ufb2e', u'\ufb2f',
                                                       u'\ufb30', u'\ufb31', u'\ufb32', u'\ufb33', u'\ufb34', u'\ufb35',
                                                       u'\ufb36', u'\ufb37', u'\ufb38', u'\ufb39', u'\ufb3a', u'\ufb3b',
                                                       u'\ufb3c', u'\ufb3d', u'\ufb3e', u'\ufb3f', u'\ufb40', u'\ufb41',
                                                       u'\ufb42', u'\ufb43', u'\ufb44', u'\ufb45', u'\ufb46', u'\ufb47',
                                                       u'\ufb48', u'\ufb49', u'\ufb4a', u'\ufb4b', u'\ufb4c', u'\ufb4d',
                                                       u'\ufb4e', u'\ufb4f', u'\ufb50', u'\ufb51', u'\ufb52', u'\ufb53',
                                                       u'\ufb54', u'\ufb55', u'\ufb56', u'\ufb57', u'\ufb58', u'\ufb59',
                                                       u'\ufb5a', u'\ufb5b', u'\ufb5c', u'\ufb5d', u'\ufb5e', u

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
