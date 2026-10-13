
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
    file_mapping = {}
    for root, dirs, files in os.walk(directory):
        for file in files:
            file_path = os.path.join(root, file)
            with open(file_path, 'r') as f:
                for line in f:
                    match = re.search(pattern, line)
                    if match:
                        text = match.group(0)
                        subdir = os.path.join(dst_dir, text)
                        if subdir not in file_mapping:
                            file_mapping[subdir] = []
                        file_mapping[subdir].append(file_path)
                        break
            elseContinue:  True
    for subdir, files in file_mapping.items():
        os.makedirs(subdir, exist_ok=True)
        for file in files:
            shutil.move(file, subdir)
    return (dst_dir, file_mapping)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
