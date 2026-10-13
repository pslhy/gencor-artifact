from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    # Get a list of all files in the directory
    file_list = os.listdir(directory)

    # Initialize a dictionary to store the files moved to each subdirectory
    subdirectory_map = {}

    # Iterate over the files
    for file in file_list:
        # Get the filename without the extension
        filename = os.path.splitext(file)[0]

        # Check if the filename contains any text enclosed in square brackets
        match = re.search(r'\[([^\]]+)\]', filename)

        # If the filename does not contain any text enclosed in square brackets, move the file to a subdirectory named "no_match"
        if not match:
            subdirectory = "no_match"
        else:
            # Get the text enclosed in square brackets and use it as the subdirectory name
            subdirectory = match.group(1)

        # Create the subdirectory if it does not exist
        if subdirectory not in subdirectory_map:
            subdirectory_map[subdirectory] = []
            os.makedirs(os.path.join(directory, subdirectory), exist_ok=True)

        # Move the file to the appropriate subdirectory
        shutil.move(os.path.join(directory, file), os.path.join(directory, subdirectory, file))
        subdirectory_map[subdirectory].append(file)

    # Return the directory path with organized files and the dictionary of subdirectories and moved files
    return (directory, subdirectory_map)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Organize files in a directory based on the first text that is not enclosed in square brackets. Move the files to subdirectories named after this text. If no matching text is found, the file is not moved.
#     The function should output with:
#         tuple:
#         str: The directory path with organized files.
#         dict: A dictionary where keys are the created subdirectories and values are lists of files moved to them.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import shutil
#     from datetime import datetime
#     def task_func(directory):
#     ```
