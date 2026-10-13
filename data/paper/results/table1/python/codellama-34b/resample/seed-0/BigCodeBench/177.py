# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Extracts articles whose titles contain specific case-insensitive keywords ("like" or "what") from a DataFrame and analyzes the frequency of each word in the content of these articles, excluding punctuation.
#     The function should raise the exception for: ValueError: If the DataFrame is empty or does not contain the necessary columns 'Title' and 'Content'.
#     The function should output with:
#         dict: A dictionary with keys as words and values as their corresponding frequency, excluding any punctuation marks.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import nltk
#     from string import punctuation
#     def task_func(df):
#     ```
from datetime import timedelta
import re
import nltk
from string import punctuation
def task_func(df):

    if not isinstance(df, pd.DataFrame) or df.empty:
        raise ValueError("Invalid input: DataFrame cannot be empty or is not of type pandas DataFrame")
    if 'Title' not in df.columns or 'Content' not in df.columns:
        raise ValueError("Invalid input: DataFrame does not contain the required columns 'Title' and 'Content'")

    df['Content'] = df['Content'].astype(str)
    df['Content'] = pd.to_numeric(df['Content'], errors='coerce')

    comments = df[df['Title'].str.contains('like|what', case=False)]['Content'].values
    if len(comments) == 0:
        comments = df['Content'].values
    words = nltk.word_tokenize(comments)
    words = [word.lower() for word in words]
    words = [word for word in words if word.isalpha()]
    words = [word for word in words if word not in set(punctuation)]
    word_counts = Counter(words)
    return {word: count for word, count in word_counts.iteritems()}

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:27: undefined name 'pd'
#     - <python>:13:21: undefined name 'pd'
#     - <python>:22:19: undefined name 'Counter'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import nltk
from string import punctuation
def task_func(df):
    if not isinstance(df, pd.DataFrame):
        raise ValueError("df must be a pandas DataFrame")
    if df.empty:
        raise ValueError("df cannot be empty")
    if 'Title' not in df.columns or 'Content' not in df.columns:
        raise ValueError("df must have columns 'Title' and 'Content'")
    df['Content'] = df['Content'].astype(str)
    df['Content'] = pd.to_numeric(df['Content'], errors='coerce')
    comments = df[df['Title'].str.contains('like|what', case=False)]['Content'].values
    if len(comments) == 0:
        comments = df['Content'].values
    words = nltk.word_tokenize(comments)
    words = [word.lower() for word in words]
    words = [word for word in words if word not in punctuation]
    word_counts = Counter(words)
    return {word: count for word, count in word_counts.items()}

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:27: undefined name 'pd'
#     - <python>:13:21: undefined name 'pd'
#     - <python>:20:19: undefined name 'Counter'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import nltk
from string import punctuation
def task_func(df):
    if not isinstance(df, pd.DataFrame):
        raise ValueError("df must be a pandas DataFrame")
    if df.empty:
        raise ValueError("df cannot be empty")
    if 'Title' not in df.columns or 'Content' not in df.columns:
        raise ValueError("df must have columns 'Title' and 'Content'")
    df['Content'] = df['Content'].astype(str)
    df['Content'] = pd.to_numeric(df['Content'], errors='coerce')
    comments = df[df['Title'].str.contains('like|what', case=False)]['Content'].values
    if len(comments) == 0:
        comments = df['Content'].values
    words = nltk.word_tokenize(comments)
    words = [word.lower() for word in words]
    words = [word for word in words if word not in punctuation]
    word_counts = dict()
    for word in words:
        if word not in word_counts:
            word_counts[word] = 1
        else:
            word_counts[word] += 1
    return word_counts

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:27: undefined name 'pd'
#     - <python>:13:21: undefined name 'pd'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import nltk
from string import punctuation
def task_func(df):
    if not isinstance(df, pandas.DataFrame):
        raise ValueError("df must be a pandas DataFrame")
    if df.empty:
        raise ValueError("df cannot be empty")
    if 'Title' not in df.columns or 'Content' not in df.columns:
        raise ValueError("df must have columns 'Title' and 'Content'")
    df['Content'] = df['Content'].astype(str)
    df['Content'] = pandas.to_numeric(df['Content'], errors='coerce')
    comments = df[df['Title'].str.contains('like|what', case=False)]['Content'].values
    if len(comments) == 0:
        comments = df['Content'].values
    words = nltk.word_tokenize(comments)
    words = [word.lower() for word in words]
    words = [word for word in words if word not in punctuation]
    word_counts = dict()
    for word in words:
        if word not in word_counts:
            word_counts[word] = 1
        else:
            word_counts[word] += 1
    return word_counts

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:27: undefined name 'pandas'
#     - <python>:13:21: undefined name 'pandas'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import nltk
from string import punctuation
def task_func(df):
    if not isinstance(df, pd.DataFrame):
        raise ValueError("df must be a pandas DataFrame")
    if df.empty:
        raise ValueError("df cannot be empty")
    if 'Title' not in df.columns or 'Content' not in df.columns:
        raise ValueError("df must have columns 'Title' and 'Content'")
    df['Content'] = df['Content'].astype(str)
    df['Content'] = pd.to_numeric(df['Content'], errors='coerce')
    comments = df[df['Title'].str.contains('like|what', case=False)]['Content'].values
    if len(comments) == 0:
        comments = df['Content'].values
    words = nltk.word_tokenize(comments)
    words = [word.lower() for word in words]
    words = [word for word in words if word not in punctuation]
    word_counts = dict()
    for word in words:
        if word not in word_counts:
            word_counts[word] = 1
        else:
            word_counts[word] += 1
    return word_counts

