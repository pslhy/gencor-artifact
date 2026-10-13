from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Set the random seed for reproducibility
    random.seed(seed)

    # Create a list of files in the source directory
    files = [os.path.join(src_dir, f) for f in os.listdir(src_dir)]
    # Filter out any non-files
    files = [f for f in files if os.path.isfile(f)]
    # Shuffle the list of files
    random.shuffle(files)

    # Move the first file to the destination directory
    file_name = os.path.basename(files[0])
    shutil.move(files[0], dest_dir)
    return file_name


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
