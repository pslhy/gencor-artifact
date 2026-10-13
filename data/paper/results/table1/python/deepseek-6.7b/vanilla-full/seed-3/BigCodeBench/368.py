from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # List of all files in src_dir
    files = os.listdir(src_dir)
    # Random seed for reproducibility
    random.seed(seed)
    # Chose a random file
    file = random.choice(files)
    # Full path to the file
    file_path = os.path.join(src_dir, file)
    # Check if file is a regular file
    if os.path.isfile(file_path):
        # Move file 
        shutil.move(file_path, dest_dir)
    return file


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
