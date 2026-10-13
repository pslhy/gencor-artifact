# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):

    # Find all files in the input directory
    files = os.listdir(directory)

    # Create a dictionary to store the files that are moved
    moved_files = {}

    # Iterate over the files
    for file in files:
        # Extract the text from the file name
        file_name = os.path.basename(file)
        text = re.search(r'(?<!\[)\w+', file_name)

        # If the text is found and it is not enclosed in brackets, move the file
        if text and text.group() not in moved_files:
            moved_file = os.path.join(os.path.dirname(directory), text.group())
            moved_files[movement_file] = []
            shutil.move(os.path.join(directory, file), moved_file)

    # Create the output dictionary
    output = {
        'directory': directory,
        'moved_files': moved_files,
    }

    return output

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:23:25: undefined name 'movement_file'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):

    # Find all files in the input directory
    files = os.listdir(directory)

    # Create a dictionary to store the files that are moved
    moved_files = {}

    # Iterate over the files
    for file in files:
        # Extract the text from the file name
        file_name = os.path.basename(file)
        text = re.search(r'(?<!\[)\w+', file_name)

        # If the text is found and it is not enclosed in brackets, move the file
        if text and text.group() not in moved_files:
            moved_file = os.path.join(os.path.dirname(directory), text.group())
            moved_files[movement_file] = []
            shutil.move(os.path.join(directory, file), movement_file)

    # Create the output dictionary
    output = {
        'directory': directory,
        'moved_files': moved_files,
    }

    return output

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:23:25: undefined name 'movement_file'
#     - <python>:24:56: undefined name 'movement_file'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):

    # Find all files in the input directory
    files = os.listdir(directory)

    # Create a dictionary to store the files that are moved
    moved_files = {}

    # Iterate over the files
    for file in files:
        # Extract the text from the file name
        file_name = os.path.basename(file)
        text = re.search(r'(?<!\[)\w+', file_name)

        # If the text is found and it is not enclosed in brackets, move the file
        if text and text.group() not in moved_files:
            moved_file = os.path.join(os.path.dirname(directory), text.group())
            moved_files[file_name] = []
            shutil.move(os.path.join(directory, file), moved_file)

    # Create the output dictionary
    output = {
        'directory': directory,
        'moved_files': moved_files,
    }

    return output

