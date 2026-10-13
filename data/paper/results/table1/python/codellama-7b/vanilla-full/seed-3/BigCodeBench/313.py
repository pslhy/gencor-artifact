from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f))]
    files.sort(key=lambda f: os.path.getmtime(os.path.join(directory, f)))
    
    renamed_files = []
    for file in files:
        # Get the first text that is not enclosed in square brackets
        match = re.search(r'\[[\w\s]+\]', file)
        if match:
            # Move the file to a subdirectory named after the text
            new_file_name = file.replace(match.group(), '')
            new_file_path = os.path.join(directory, new_file_name)
            if not os.path.exists(new_file_path):
                os.mkdir(new_file_path)
            shutil.move(os.path.join(directory, file), new_file_path)
            renamed_files.append((file, new_file_path))
    
    output_directory = directory
    subdirectories = [new_file_path for file, new_file_path in renamed_files]
    for subdirectory in subdirectories:
        output_directory = os.path.join(output_directory, subdirectory)
    
    return (output_directory, {subdirectory: [file for file, new_file_path in renamed_files if new_file_path == subdirectory] for subdirectory in subdirectories})


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
