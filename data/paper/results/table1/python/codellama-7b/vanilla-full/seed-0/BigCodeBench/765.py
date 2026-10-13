from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):

    # Initialize empty list to store full file paths of copied files
    copied_files = []

    # Loop through dictionary of files
    for file_path, file_name in kwargs.items():

        # Check if file exists
        if os.path.exists(file_path):

            # Get file size
            file_size = Path(file_path).stat().st_size

            # Check if file is empty
            if file_size > 0:

                # Copy file to target directory
                shutil.copy(file_path, target_dir)

                # Add full file path to list of copied files
                copied_files.append(f"{target_dir}/{file_name}")

    # Return list of full file paths that were copied
    return copied_files


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
