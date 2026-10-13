from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    # Initialize a dictionary to store the word counts
    word_counts = {}

    # Loop through all .txt files in the directory
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.txt'):
                file_path = os.path.join(root, file)
                # Read the file contents and split it into a list of words
                with open(file_path, 'r') as f:
                    contents = f.read()
                    words = contents.split()

                # Update the word counts dictionary with the word frequencies
                for word in words:
                    word_counts[word] = word_counts.get(word, 0) + 1

    # Save the word counts to a JSON file
    with open(filename, 'w') as f:
        json.dump(word_counts, f)

    # Return the total number of words in the .txt files
    return sum(word_counts.values())

# Example usage:
total_words = task_func('word_counts.json', 'path/to/directory')
print(total_words)


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
