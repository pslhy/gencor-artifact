from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    copied_files = []
    for file in kwargs:
        if os.path.exists(file) and os.path.getsize(file) > 0:
            if not os.path.exists(target_dir):
                os.makedirs(target_dir)
            shutil.copy2(file, target_dir)
            copied_files.append(os.path.join(target_dir, os.path.basename(file)))
    return copied_files
  
# To use the function, pass in a list of file paths
print(task_func(["file1.txt", "file2.txt", "file3.txt"]))


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
