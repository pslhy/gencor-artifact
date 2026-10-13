from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    """
    Copies files to the specified target directory, if the file name exists and has content

    Args:
        kwargs (dict): A dictionary containing file paths to process
        target_dir (str): The directory where files should be copied

    Returns:
        copied_files (list): A list of full file paths that were copied
"""
    copied_files = []
    for file_path in kwargs.values():
        if os.path.isfile(file_path) and os.stat(file_path).st_size > 0:
            filename = os.path.basename(file_path)
            target_path = os.path.join(target_dir, filename)
            shutil.copyfile(file_path, target_path)
            copied_files.append(file_path)
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
