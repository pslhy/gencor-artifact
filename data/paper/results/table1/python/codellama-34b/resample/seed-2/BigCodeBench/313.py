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
    """
    Move files based on the first text that is not enclosed in square brackets.

    :param directory: the input directory
    :return: tuple(output directory, dict{subdirectories: list of files})
    """
    dst_dir = os.path.join(directory, 'output')
    os.makedirs(dst_dir, exist_ok=True)
    pattern = r'^\[[^\]]+\]'
    file_mapping = defaultdict(list)
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            with open(os.path.join(directory, filename), 'r') as file:
                line = file.readline()
                match = re.search(pattern, line)
                if match:
                    subfolder = match.group(0)[1:-1]
                    dst = os.path.join(dst_dir, subfolder)
                    os.makedirs(dst, exist_ok=True)
                    file_mapping[subfolder].append(filename)
                    shutil.move(os.path.join(directory, filename), dst)
    return (dst_dir, file_mapping)

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:16:20: undefined name 'defaultdict'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    """
    Move files based on the first text that is not enclosed in square brackets.

    :param directory: The input directory
    :return: Tuple with two items (output directory and dict with key as the subdirectory and value as the list of files)
    """
    dst_dir = os.path.join(directory, 'output')
    os.makedirs(dst_dir, exist_ok=True)
    pattern = r'^\[[^\]]+\]'
    file_mapping = defaultdict(list)
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            with open(os.path.join(directory, filename), 'r') as file:
                line = file.readline()
                match = re.search(pattern, line)
                if match:
                    subfolder = match.group(0)[1:-1]
                    dst = os.path.join(dst_dir, subfolder)
                    os.makedirs(dst, exist_ok=True)
                    file_mapping[subfolder].append(filename)
                    shutil.move(os.path.join(directory, filename), dst)
    return (dst_dir, file_mapping)

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:16:20: undefined name 'defaultdict'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    """
    Move files based on the first text that is not enclosed in square brackets.

    :param directory: The input directory
    :return: Tuple with two items (output directory and dict with key as the subdirectory and value as the list of files)
    """
    dst_dir = os.path.join(directory, 'output')
    os.makedirs(dst_dir, exist_ok=True)
    pattern = r'^\[[^\]]+\]'
    file_mapping = dict()
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            with open(os.path.join(directory, filename), 'r') as file:
                line = file.readline()
                match = re.search(pattern, line)
                if match:
                    subfolder = match.group(0)[1:-1]
                    dst = os.path.join(dst_dir, subfolder)
                    os.makedirs(dst, exist_ok=True)
                    file_mapping[subfolder] = file_mapping.get(subfolder, []) + [filename]
                    shutil.move(os.path.join(directory, filename), dst)
    return (dst_dir, file_mapping)

