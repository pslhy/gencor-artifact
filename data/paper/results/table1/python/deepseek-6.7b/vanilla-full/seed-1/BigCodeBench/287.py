from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    results = Counter()
    for folderName, subfolders, filenames in os.walk(directory):
        for filename in filenames:
            if filename.endswith('.txt'):
                with open(os.path.join(folderName, filename), 'r',encoding="utf-8") as f:
                    txt_content = f.read()
                    words = txt_content.split()
                    results[filename] = len(words)

    with open(filename, 'w') as f:
        json.dump(results.most_common(), f)

    return sum(results.values())


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
