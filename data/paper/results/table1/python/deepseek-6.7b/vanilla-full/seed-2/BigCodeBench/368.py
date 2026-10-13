from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Set the random seed to ensure the identical outcomes across multiple runs.
    random.seed(seed)

    # Get a list of files in source directory.
    files = os.listdir(src_dir)

    # Filter list to only include files, not directories.
    files = [file for file in files if os.path.isfile(os.path.join(src_dir, file))]

    # If directory is empty, return an empty string.
    if not files:
        return ''

    # Choose a random file.
    file = random.choice(files)

    # Construct full source and destination file paths.
    src_file = os.path.join(src_dir, file)
    dest_file = os.path.join(dest_dir, file)

    # Move file.
    shutil.move(src_file, dest_file)

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
