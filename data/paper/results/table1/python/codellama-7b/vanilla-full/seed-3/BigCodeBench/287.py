from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    files = [os.path.join(directory, f) for f in os.listdir(directory) if f.endswith(filename)]
    word_counts = Counter()
    for file in files:
        with open(file, 'r', encoding='utf-8') as f:
            word_counts.update(f.read().split())
    total_words = sum(word_counts.values())
    with open(f'{filename}.json', 'w', encoding='utf-8') as f:
        json.dump(word_counts, f, ensure_ascii=False, indent=4)
    return total_words


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Count the number of words in .txt files within a specified directory, export the counts to a JSON file, and then return the total number of words.
#     The function should output with:
#         int: total number of words in .txt files
#     You should write self-contained code starting with:
#     ```
#     from collections import Counter
#     import os
#     import json
#     def task_func(filename, directory):
#     ```
