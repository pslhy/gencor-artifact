import filecmp

from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:

    # seed the rng to make it appear random
    random.seed(seed)

    # get a list of files in the source directory
    list_of_files = os.listdir(src_dir)

    # select a random file
    selected_file = random.choice(list_of_files)

    # do not move the file if it is empty.
    if list_of_files == [] :
        print('src directory does not exist.')
        return

 
    # check if the file is valid and get its size and create a dest directory if necessary
    elif not os.path.isfile(selected_file):
        return selected_file, filecmp.dircmp(src_dir, dest_dir).left_only

    # Do the move
    else:
        full_dest_path = os.path.join(dest_dir, selected_file)
        shutil.move(os.path.join(src_dir, selected_file), full_dest_path)
        return selected_file


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
