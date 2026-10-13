from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    base_path = os.path.abspath(directory)
    results = []
    moved_files = {}
    
    def get_key(filename):
        match = re.search(r'[^[]*\b(\w+)\b[^[]*', filename)
        return match.group(1) if match else None
    
    for filename in os.listdir(directory):
        full_path = os.path.join(directory, filename)
        if os.path.isfile(full_path):
            key = get_key(filename)
            if key:
                new_dir_path = os.path.join(base_path, key)
                if key not in moved_files:
                    moved_files[key] = []
                    os.makedirs(new_dir_path)
                moved_files[key].append(full_path)
                shutil.move(full_path, os.path.join(new_dir_path, filename))
                results.append(f'Processed {filename}: Moved to "{key}"')
            else:
                results.append(f'Processed {filename}: No matching key found')
    
    return base_path, moved_files


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
