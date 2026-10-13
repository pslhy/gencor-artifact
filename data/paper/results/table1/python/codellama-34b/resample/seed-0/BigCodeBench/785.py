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

    # Find all files matching the pattern
    file_names = glob.glob(pattern)

    # Create a unique name for the archive
    archive_name = f"archive_{timedelta.now()}.zip"

    # Create the archive
    with subprocess.Popen(['zip', '-jqr', os.path.join(ARCHIVE_DIR, archive_name), '.'] + file_names, cwd=ARCHIVE_DIR) as proc:
        proc.read()

    # Delete the original files
    for file_name in file_names:
        os.remove(file_name)

    return os.path.join(ARCHIVE_DIR, archive_name)

