from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    random.seed(seed)
    files = [f for f in os.listdir(src_dir) if os.path.isfile(os.path.join(src_dir, f))]
    if files:
        file_to_move = random.choice(files)
        shutil.move(os.path.join(src_dir, file_to_move), os.path.join(dest_dir, file_to_move))
        return file_to_move
    else:
        return ""


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
