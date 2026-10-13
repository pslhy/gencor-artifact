from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    random.seed(seed)
    files = os.listdir(src_dir)
    chosen_file = random.choice(files)
    shutil.move(os.path.join(src_dir, chosen_file), dest_dir)
    return chosen_file


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
