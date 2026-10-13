# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Process files from a dictionary by checking if the file exists, and if it has content, then copies it to a target directory.
#     The function should output with:
#         copied_files (list): A list of full file paths that were copied.
#     You should write self-contained code starting with:
#     ```
#     import os
#     from pathlib import Path
#     import shutil
#     def task_func(kwargs, target_dir="non_none_files"):
#     ```
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    # Initialize copied_files list
    copied_files = []
    # Replace current directory with target_dir
    target_dir = Path.cwd(),
    # Loop through files in the directory
    for file in os.listdir():
        # Check if file exists and is not 0 bytes
        if os.path.exists(file) and os.path.getsize(file) > 0:
            # Copy file to target directory
            shutil.copyfile(file, os.path.join(target_dir, file))
            # Add full file path to copied_files list
            copied_files.append(os.path.abspath(file))
    # Return copied_files list
    return copied_files

