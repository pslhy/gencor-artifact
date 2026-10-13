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

    txt_files = []
    text = []
    num = 0
    # perform task

    try:
        for root, dirs, files in os.walk(directory):
            for file in files:
                if file.endswith('.txt'):
                    txt_files.append(os.path.join(root,file))
    except :
        print("error")

    for file in txt_files:
        with open(file, "r", encoding="utf8") as f:
            text = (f.read().split())
            words = Counter(text)
            num  + len(words)

    json_file = directory + "output.json"
    with open(json_file, "w", encoding="utf-8") as f:
        json.dump(words,f,ensure_ascii=False,indent=4)

    # return total number of words
    return num

