from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    # Initialize copied_files list
    copied_files = []
    # Iterate over files in the dictionary
    for file, path in kwargs.items():
        # Check if the file exists
        if os.path.exists(path):
            # Check if the file is not empty
            if os.path.getsize(path) > 0:
                # Copy the file to the target directory
                shutil.copy(path, target_dir)
                # Add the file path to the copied_files list
                copied_files.append(path)
    return copied_files

# Test the function
kwargs = {"file1": "path/to/file1", "file2": "path/to/file2"}

# Call the function
copied_files = task_func(kwargs, "target/directory")

# Assert that the correct files were copied
assert copied_files == ["path/to/file2"]


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
