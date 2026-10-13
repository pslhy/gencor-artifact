from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    copied_files = []
    target_path = Path(target_dir)
    if not target_path.exists():
        target_path.mkdir(parents=True)

    for file_info in kwargs.values():
        if os.path.exists(file_info['file_path']) and os.path.getsize(file_info['file_path']) > 0:
            file_path = Path(file_info['file_path'])
            target_file_path = target_path / file_info['file_name']
            shutil.copy2(file_path, target_file_path)
            copied_files.append(str(target_file_path))

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
