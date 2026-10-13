# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Randomize the seed for a new random sequence for each run
    random.seed(seed)
    # Use the current time as a seed if no seed is provided
    if seed is None:
        seed = random.randint(0, 9999)

    # Get the list of all files in the source directory
    file_names = os.listdir(src_dir)
    # Make a random selection of one of the files
    move_file = file_names[random.randint(0, len(file_names) - 1)]

    # Move the selected file to the destination directory
    shutil.move(os.path.join(src_dir, move_file), dest_dir)

    return move_file

