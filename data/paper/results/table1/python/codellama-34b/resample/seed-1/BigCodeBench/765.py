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
    # Get paths
    paths = [Path(filepath).resolve() for filepath in kwargs.values()]

    # Create target directory if it does not exist
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)

    # Create a list of copied files
    copied_files = []

    # Loop through each file
    for filepath in paths:
        # Check if file exists
        if filepath.exists():
            # Check if file is not empty
            if os.path.getsize(filepath) > 0:
                # Get the filenames
                fname = os.path.basename(filepath)
                dst = os.path.join(target_dir, fname)
                # Copy file to target directory
                shutil.copy(filepath, dst)
                # Add file path to copied_files list
                copied_files.append(dst)

    return copied_files

