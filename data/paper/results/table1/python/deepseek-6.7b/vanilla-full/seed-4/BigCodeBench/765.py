from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    copied_files = []

    # create target directory if it doesn't exist
    target_path = Path(target_dir)
    target_path.mkdir(exist_ok=True)

    # iterate over files in the dictionary
    for original_file_path in kwargs.values():
        file_path = Path(original_file_path)

        # check if file exists and is not empty
        if file_path.is_file() and os.path.getsize(file_path) > 0:
            # construct the new file path
            new_file_path = target_path / file_path.name

            # copy the file
            shutil.copy2(file_path, new_file_path)

            # add the path to the list of copied files
            copied_files.append(str(new_file_path))

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
