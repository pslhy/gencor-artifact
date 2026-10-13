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
    # Get all files matching the pattern
    files = glob.glob(pattern)
    if len(files) == 0:
        print('No files were found.')
        return None
    # Create archive file for the matching files
    archive_file = os.path.join(ARCHIVE_DIR, f'{pattern}.zip')
    with open(archive_file, 'wb') as f:
        for file in files:
            f.write(file.encode())
    for file in files:
        os.remove(file)
    return archive_file

