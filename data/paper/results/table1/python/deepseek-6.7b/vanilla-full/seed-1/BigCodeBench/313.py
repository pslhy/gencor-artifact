from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    results_dict = {}
    for folderName, subfolders, filenames in os.walk(directory):
        for filename in filenames:
            with open(os.path.join(folderName, filename), 'r') as file:
                for line in file:
                    match = re.search(r'\[(.*?)\]', line)
                    if match is not None:
                        # If the directory already exists, append the file to the list of files in that directory
                        if match.group(1) in results_dict:
                            results_dict[match.group(1)].append(filename)
                            break
                        # If the directory does not exist, create it and add the file to the list of files in that directory
                        else:
                            results_dict[match.group(1)] = [filename]
                            try:
                                os.makedirs(os.path.join(folderName, match.group(1)))
                                shutil.move(os.path.join(folderName, filename), os.path.join(folderName, match.group(1), filename))
                            except FileExistsError:
                                shutil.move(os.path.join(folderName, filename), os.path.join(folderName, match.group(1), filename))
                            break
    return (directory, results_dict)


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
