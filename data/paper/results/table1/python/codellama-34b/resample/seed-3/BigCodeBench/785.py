# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Archive all files that match a particular pattern and then delete the original files.
#     Note that: This function will return the archive file path.
#     The function should output with:
#         archive_file (str): The archive file path.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import glob
#     # Constants
#     ARCHIVE_DIR = '/tmp/archive'
#     def task_func(pattern):
#     ```
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    files = glob.glob(pattern)
    archive_file = os.path.join(ARCHIVE_DIR, 'archive_' + str(timedelta.now().replace(microseconds=0)))
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # create archive file
    with open(archive_file, 'wb') as f:
        for file_path in files:
            with open(file_path, 'rb') as original:
                shutil.copyfileobj(original, f)
    # delete original files
    for file_path in files:
        os.remove(file_path)
    return archive_file

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:17:17: undefined name 'shutil'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    files = glob.glob(pattern)
    archive_file = os.path.join(ARCHIVE_DIR, 'archive_' + str(timedelta.now().replace(microseconds=0)))
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # create archive file
    with open(archive_file, 'wb') as f:
        for file_path in files:
            with open(file_path, 'rb') as original:
                f.writelines(original.readlines())
    # delete original files
    for file_path in files:
        os.remove(file_path)
    return archive_file

