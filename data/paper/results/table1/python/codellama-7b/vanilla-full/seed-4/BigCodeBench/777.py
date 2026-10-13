from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    glob_path = os.path.join(directory, pattern)
    zip_files = [f for f in os.listdir(directory) if os.path.isfile(os.path.join(directory, f)) and re.match(pattern, f)]
    extracted_dirs = set()
    for f in zip_files:
        prefix, _ = re.split(r'-', f, 1)
        dest_dir = os.path.join(directory, prefix)
        if not os.path.exists(dest_dir):
            os.makedirs(dest_dir)
        with zipfile.ZipFile(os.path.join(directory, f), 'r') as zf:
            zf.extractall(dest_dir)
        extracted_dirs.add(dest_dir)
    return extracted_dirs


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Unzip all zip files in a directory whose name matches a certain pattern by splitting the filename the last time "-" occurs and using the prefix part of the filename as the directory to extract.
#     The function should output with:
#         list: A list of directories where the files were extracted.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import zipfile
#     def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
#     ```
