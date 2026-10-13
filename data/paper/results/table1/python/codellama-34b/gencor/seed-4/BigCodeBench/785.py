import datetime
import zipfile

from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    glob_path = os.path.join(pattern, '*')
    files = glob.glob(glob_path)
    archive_file = os.path.join(ARCHIVE_DIR, '{}.zip'.format(datetime.now().strftime('%Y-%m-%d')))
    with zipfile.ZipFile(archive_file, 'w') as zip_file:
        for file in files:
            zip_file.write(file, os.path.basename(file))
    for file in files:
        os.remove(file)
    return archive_file


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
