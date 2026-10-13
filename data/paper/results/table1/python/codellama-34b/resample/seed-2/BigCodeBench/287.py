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
    
    word_count = 0
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.txt'):
                filepath = os.path.join(root, file)
                with open(filepath, 'r') as f:
                    word_count += len(f.read().split())
    with open(filename, 'w') as f:
        f.write(json.dumps({'word_count': word_count}))
    return word_count

