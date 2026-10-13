from datetime import timedelta
from collections import Counter
import os
import json
def task_func(filename, directory):
    # Define the path to the directory
    directory_path = os.path.join(directory, filename)

    # Initialize the counter for the total number of words
    word_counter = Counter()

    # Iterate over the files in the directory
    for file in os.listdir(directory_path):
        # Only count .txt files
        if file.endswith(".txt"):
            # Open the file and count the number of words
            with open(os.path.join(directory_path, file), "r", encoding="utf-8") as f:
                word_counter.update([word.lower() for word in f.read().split()])

    # Export the word counts to a JSON file
    with open("word_counts.json", "w", encoding="utf-8") as f:
        json.dump(word_counter.most_common(), f, indent=4)

    # Return the total number of words
    return sum(word_counter.values())


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
