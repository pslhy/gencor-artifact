# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Organize files in a directory based on the first text that is not enclosed in square brackets. Move the files to subdirectories named after this text. If no matching text is found, the file is not moved.
#     The function should output with:
#         tuple:
#         str: The directory path with organized files.
#         dict: A dictionary where keys are the created subdirectories and values are lists of files moved to them.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import shutil
#     from datetime import datetime
#     def task_func(directory):
#     ```
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    files_to_move = []
    # This function traverse the file tree for the given directory, and creates dictionary of files to move and their names
    # The dictionary contains the file names and their target directories where the files are supposed to be moved
    def file_traverse(file_tree_root):
        nonlocal files_to_move
        head, tail = os.path.split(file_tree_root)
        if os.path.isfile(file_tree_root):
            files_to_move.append(file_tree_root)
        else:
            for root, dirs, files in os.walk(file_tree_root):
                for file in files:
                    file = os.path.join(root, file)
                    if os.path.isfile(file) and not os.path.islink(file):
                        files_to_move.append(file)
    # This function is used to move files to their target directories
    def move_files():
        nonlocal files_to_move
        for file in files_to_move:
            print(f"Moving file: {file}")
            shutil.move(file, os.path.join(directory, Path(file).name))
    file_traverse(directory)
    for file in files_to_move:
        target_dir = Path(file).name.split(":")[-1]
        if target_dir:
            target_dir = target_dir.strip().lower()
            if not os.path.exists(os.path.join(directory, target_dir)):
                os.makedirs(os.path.join(directory, target_dir))
mkdir_p(os.path.join(directory, target_dir))
            move_files()
            return (directory, dict(files))

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:35:12: unexpected indent
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    files_to_move = []
    # This function traverse the file tree for the given directory, and creates a list of files to move and their names
    # The list contains the file names and their target directories where the files are supposed to be moved
    def file_traverse(file_tree_root):
        nonlocal files_to_move
        head, tail = os.path.split(file_tree_root)
        if os.path.isfile(file_tree_root):
            files_to_move.append(file_tree_root)
        else:
            for root, dirs, files in os.walk(file_tree_root):
                for file in files:
                    file = os.path.join(root, file)
                    if os.path.isfile(file) and not os.path.islink(file):
                        files_to_move.append(file)
    # This function is used to move files to their target directories
    def move_files():
        nonlocal files_to_move
        for file in files_to_move:
            print(f"Moving file: {file}")
            shutil.move(file, os.path.join(directory, Path(file).name))
    file_traverse(directory)
    for file in files_to_move:
        target_dir = Path(file).name.split(":")[-1]
        if target_dir:
            target_dir = target_dir.strip().lower()
            if not os.path.exists(os.path.join(directory, target_dir)):
                os.makedirs(os.path.join(directory, target_dir))
    move_files()
    return (directory, dict(files=files_to_move))

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:26:55: undefined name 'Path'
#     - <python>:29:22: undefined name 'Path'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    files_to_move = []
    
    # This function traverse the file tree for the given directory, and creates a list of files to move and their names
    # The list contains the file names and their target directories where the files are supposed to be moved
    def file_traverse(file_tree_root):
        nonlocal files_to_move
        head, tail = os.path.split(file_tree_root)
        if os.path.isfile(file_tree_root):
            files_to_move.append(file_tree_root)
        else:
            for root, dirs, files in os.walk(file_tree_root):
                for file in files:
                    file = os.path.join(root, file)
                    if os.path.isfile(file) and not os.path.islink(file):
                        files_to_move.append(file)
    
    # This function is used to move files to their target directories
    def move_files():
        nonlocal files_to_move
        for file in files_to_move:
            print(f"Moving file: {file}")
            shutil.move(file, os.path.join(directory, file.name))
    
    file_traverse(directory)
    for file in files_to_move:
        target_dir = file.name.split(":")[-1]
        if target_dir:
            target_dir = target_dir.strip().lower()
            if not os.path.exists(os.path.join(directory, target_dir)):
                os.makedirs(os.path.join(directory, target_dir))
    move_files()
    return (directory, dict(files=files_to_move))

