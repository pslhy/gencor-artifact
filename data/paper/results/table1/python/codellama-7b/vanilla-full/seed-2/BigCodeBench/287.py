from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    file_counter = Counter()
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".txt"):
                file_path = os.path.join(root, file)
                with open(file_path, "r", encoding="utf-8") as f:
                    contents = f.read()
                    file_counter[file] = len(contents.split())
    json_output = json.dumps(file_counter)
    with open(filename, "w", encoding="utf-8") as f:
        f.write(json_output)
    total_words = sum(file_counter.values())
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
