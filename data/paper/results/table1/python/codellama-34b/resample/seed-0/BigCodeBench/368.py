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

  if  os.path.isfile(os.path.join(src_dir, selected_file)):
      file_to_move = selected_file

  # move the file to the destination directory
  shutil.move(os.path.join(src_dir, selected_file), dest_dir)

  # output the name of the file moved
  return list_of_files

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:21:60: unindent does not match any outer indentation level
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:

    # Seed the rng to make it appear random
    random.seed(seed)

    # Get a list of files in the source directory
    list_of_files = os.listdir(src_dir)

    # Select a random file
    selected_file = random.choice(list_of_files)

    # Do not move the file if it is empty.
    if selected_file is None:
        print('No files found in', src_dir)
        return

    # Move the file to the destination directory
    shutil.move(os.path.join(src_dir, selected_file), dest_dir)

    # Print the name of the file moved
    return selected_file

