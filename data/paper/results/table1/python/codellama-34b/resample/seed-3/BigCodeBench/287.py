# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    files = [file for file in os.listdir(directory) if file.endswith(".txt")] # create a list of files with txt extensions
    word_count = Counter()
    for file in files:
        with open(file) as f:
            word_count.update(f.read().lower().count)
    words_per_file = {file: count for file, count in zip(files, word_count)} # create a dictionary with words_per_file as keys and count as values
    with open(filename, "w") as outfile:
        json.dump(words_per_file, outfile)
    return len(word_count)

