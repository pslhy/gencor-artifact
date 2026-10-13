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

    subdirectories = {} # subdirectories will store the subdirectories created in the directory tree with entries

    main_directory_path = '.'

    # Go through each file in the main directory '.'
    for filename in os.listdir(main_directory_path):
        
        # Get the file path
        full_file_path = os.path.join(main_directory_path, filename)

        # Skip directories
        if not os.path.isfile(full_file_path):
            continue

        # Extract the first text that is not enclosed in square brackets from the filename
        matches = re.search(r'[^\]]*\[[^\]]*\](?:\.[^.]*|$)')
        if matches is None:
            continue

        first_text = matches[1]
        
        if first_text not in subdirectories:
            # If subdirectory doesn't exist, create it
            subdirectory_path = os.path.join(main_directory_path, first_text)
            os.mkdir(subdirectory_path)
            subdirectories[first_text] = []

        # Move file from main directory to the corresponding subdirectory
        shutil.move(full_file_path, subdirectory_path)
        subdirectories[first_text].append(filename) # Append the new moved file to the list of files in that subdirectory
        
    time_boias = str(datetime.now() + timedelta(days=3)).strftime("%m/%d/%Y")
    return directory

