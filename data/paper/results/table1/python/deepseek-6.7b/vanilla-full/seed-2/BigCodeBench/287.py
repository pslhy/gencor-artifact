from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    # create a counter to store word counts
    count = Counter()
    
    # iterate over files in the specified directory
    for file in os.listdir(directory):
        # check if file is a text file
        if file.endswith(".txt"):
            with open(os.path.join(directory, file), 'r') as f:
                # read the file and count the words
                count.update(f.read().split())
    
    # sum up the counts
    total = sum(count.values())
    
    # write counts to a json file
    with open(filename, 'w') as f:
        json.dump(dict(count), f, indent=4)
    
    return total


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
