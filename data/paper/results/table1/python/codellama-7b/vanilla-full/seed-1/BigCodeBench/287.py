from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    # Initialize Counter to keep track of word counts
    word_counts = Counter()
    
    # Iterate over all files in the directory
    for root, dirs, files in os.walk(directory):
        for file in files:
            # Check if the file is a .txt file
            if file.endswith('.txt'):
                # Open the file and iterate over its lines
                with open(os.path.join(root, file), 'r') as f:
                    for line in f:
                        # Add the words in the line to the Counter
                        word_counts.update(line.split())
    
    # Export the word counts to a JSON file
    with open(filename, 'w') as f:
        json.dump(word_counts, f)
    
    # Return the total number of words
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
