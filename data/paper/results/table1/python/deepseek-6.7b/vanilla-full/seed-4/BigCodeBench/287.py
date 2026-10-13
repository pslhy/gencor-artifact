from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    total_words = 0
    word_dict = {}
    for file in os.listdir(directory):
        if file.endswith('.txt'):
            with open(os.path.join(directory, file), 'r') as f:
                words = f.read().split()
                word_count = len(words)
                word_dict[file] = word_count
                total_words += word_count
    with open(filename, 'w') as json_file:
        json.dump(word_dict, json_file)
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
