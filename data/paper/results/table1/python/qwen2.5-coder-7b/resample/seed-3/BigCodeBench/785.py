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
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    archive_file = os.path.join(ARCHIVE_DIR, f'files_{int(time.time())}.zip')
    files_to_archive = glob.glob(pattern)
    if files_to_archive:
        subprocess.run(['zip', archive_file] + files_to_archive)
        for file in files_to_archive:
            os.remove(file)
    return archive_file

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:59: undefined name 'time'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    import time  # Import time module here
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    archive_file = os.path.join(ARCHIVE_DIR, f'files_{int(time.time())}.zip')
    files_to_archive = glob.glob(pattern)
    if files_to_archive:
        subprocess.run(['zip', archive_file] + files_to_archive)
        for file in files_to_archive:
            os.remove(file)
    return archive_file

