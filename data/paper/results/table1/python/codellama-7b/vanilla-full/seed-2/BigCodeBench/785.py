from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Find the files that match the pattern
    files = glob.glob(pattern)
    # Loop through the files and create an archive
    for file in files:
        # Archive the file
        archive_file = os.path.join(ARCHIVE_DIR, file + '.zip')
        subprocess.run(['zip', '-r', archive_file, file], check=True)
        # Remove the original file
        os.remove(file)
    # Return the archive file path
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
