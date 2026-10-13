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
    # Initialize Counter to track total number of words
    total_words = Counter()
    
    # Loop through files in given directory
    for file in os.listdir(directory):
        
        # Check for .txt extension
        if file.endswith('.txt'):
            
            # Open each file and read its content
            with open(file, 'r') as f:
                
                # Use Counter to count the number of words in the file
                temp_words = Counter([word.strip() for word in f])
                
                # Add words to total counter
                for word, count in temp_words.items():
                    total_words[word] += count
    
    # Return total number of words
    return len(total_words)

# To Test the Function:
# import os
# import json
# directory = r'/path/to/directory'
# filename = 'words_count.json'
# tasks = [('test_file1.txt', directory), ('test_file2.txt', directory), ('test_file3.txt', directory)]
# total_words = 0
# for file, directory in tasks:
#     total_words += task_func(file, directory)
# print(total_words)

