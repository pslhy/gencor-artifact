from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    files = [file for file in os.listdir(src_dir) if os.path.isfile(os.path.join(src_dir, file))]
    if seed:
        random.seed(seed)
        random.shuffle(files)
    for file in files:
        shutil.move(os.path.join(src_dir, file), os.path.join(dest_dir, file))
    return f"Moved {files[0]} to {dest_dir}"


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Moves a random file from the source directory to the specified destination directory.
#     The function should output with:
#         str: The name of the file moved. Format: 'filename.extension' (e.g., 'file1.txt').
#     You should write self-contained code starting with:
#     ```
#     import os
#     import shutil
#     import random
#     def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
#     ```
