from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    # Get the source and target directories from the kwargs
    source_dir = kwargs["source_dir"]
    target_dir = kwargs.get("target_dir", "non_none_files")

    # Create the target directory if it doesn't exist
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)

    # Loop through the files in the source directory
    for filename in os.listdir(source_dir):
        source_file = os.path.join(source_dir, filename)
        target_file = os.path.join(target_dir, filename)

        # Check if the file exists and has content
        if os.path.isfile(source_file) and os.path.getsize(source_file) > 0:
            # Copy the file to the target directory
            shutil.copy(source_file, target_file)

    # Returns the list of copied files
    return [target_file for target_file in os.listdir(target_dir)]


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
