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
    # directory: path to directory containing files

    # Create subdirectory and file list dictionary
    dir_dict = {}
    for dirpath, dirnames, filenames in os.walk(directory):
        for filename in filenames:
            file_path = os.path.join(dirpath, filename)
            match = re.search(r'[([^[]+)]', file_path)
            if match:
                subdir_name = match.group(1)
                if subdir_name not in dir_dict:
                    dir_dict[subdir_name] = []
                dir_dict[subdir_name].append(file_path)

    # Move files to subdirectories
    for subdir_name, file_list in dir_dict.items():
        subdir_path = os.path.join(directory, subdir_name)
        try:
            os.makedirs(subdir_path)
        except FileExistsError:
            pass
        for file_path in file_list:
            shutil.move(file_path, subdir_path)

    return (directory, dir_dict)

