# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # directory: path to directory containing the zip files
    # pattern: regular expression pattern to match the zip file names

    unzipped_directories = []
    for filename in os.listdir():
        match = re.fullmatch(pattern, zipfile.split(os.path.basename(filename))[-1])
        if match:
            # extract the name of the directory to create based on the prefix of the zip file
            dir_name = match.group(1)
            try:
                os.mkdir(os.path.join(directory, dir_name))
            except FileExistsError:
                pass
            with zipfile.ZipFile(filename, 'r') as zip_ref:
                zip_ref.extractall(os.path.join(directory, dir_name))
            unzipped_directories.append(os.path.join(directory, dir_name))

    return unzipped_directories

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:11:47: undefined module member 'zipfile.split'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # directory: path to directory containing the zip files
    # pattern: regular expression pattern to match the zip file names

    unzipped_directories = []
    for filename in os.listdir(directory):
        match = re.fullmatch(pattern, os.path.basename(filename))
        if match:
            # extract the name of the directory to create based on the prefix of the zip file
            dir_name = match.group(1)
            try:
                os.mkdir(os.path.join(directory, dir_name))
            except FileExistsError:
                pass
            with zipfile.ZipFile(filename, 'r') as zip_ref:
                zip_ref.extractall(os.path.join(directory, dir_name))
            unzipped_directories.append(os.path.join(directory, dir_name))

    return unzipped_directories

