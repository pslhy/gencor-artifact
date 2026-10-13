from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    # Initialize word counter.
    word_counts = Counter()
    # Loop over all files in the directory.
    for filename in os.listdir(directory):
        # Check if the file is a text file.
        if filename.endswith('.txt'):
            with open(os.path.join(directory, filename), 'r', encoding='utf-8') as file:
                # Split the file content into words and count them.
                word_counts.update(word.strip('.,?!"();:') for word in file.read().split())
    # Save the word counts to a json file.
    with open(filename, 'w') as file:
        json.dump(word_counts, file)
    # Return the total number of words.
    return sum(word_counts.values())


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
