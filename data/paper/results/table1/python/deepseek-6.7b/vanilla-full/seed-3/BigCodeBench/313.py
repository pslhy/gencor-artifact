from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    now = datetime.now()
    files = {}
    created_dirs = {}
    for filename in os.listdir(directory):
        if os.path.isfile(os.path.join(directory, filename)):
            with open(os.path.join(directory, filename), 'r') as f:
                for line in f:
                    match = re.match('^(\[[^\]]*\])*([^\]].*)', line)
                    if match:
                        first_non_bracket_text = match.group(2).strip()
                        if not first_non_bracket_text:
                            break
                        new_folder = os.path.join(directory, first_non_bracket_text)
                        if not os.path.exists(new_folder):
                            os.makedirs(new_folder)
                        shutil.move(os.path.join(directory, filename), new_folder)
                        if first_non_bracket_text not in files:
                            files[first_non_bracket_text] = []
                        files[first_non_bracket_text].append(filename)
                        created_dirs[first_non_bracket_text] = new_folder
                        break
    return (directory, created_dirs), files


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
