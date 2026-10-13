from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    copied_files = []
    source_dir = Path(kwargs.get("source_dir", "."))
    target_dir = Path(target_dir) / source_dir.name
    target_dir.mkdir(parents=True, exist_ok=True)

    for file_info in kwargs["file_dict"].values():
        source_file = source_dir / file_info["filename"]
        target_file = target_dir / file_info["filename"]

        if source_file.exists() and source_file.stat().st_size > 0:
            shutil.copy(source_file, target_file)
            copied_files.append(target_file.resolve())

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
