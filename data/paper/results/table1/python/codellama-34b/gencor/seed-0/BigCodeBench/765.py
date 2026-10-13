
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):

    non_none_files = []
    for file in kwargs:
        if Path(file).is_file() and Path(file).getreader():
            non_none_files.append(file)
  
    return_files = []
    if len(non_none_files):
        target_path = Path(target_dir)
        if not target_path.is_dir():
            target_path.mkdir(parents=True, exist_ok=True)
    
 
        for file in non_none_files:
            shutil.copy(file, target_path)
            return_files.append(os.path.join(target_path, file))
    
    return return_files


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
