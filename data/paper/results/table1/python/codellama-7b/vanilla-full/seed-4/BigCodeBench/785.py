from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Get the list of files that match the pattern
    files = glob.glob(pattern)
    # Iterate over the files and create archives
    for file in files:
        # Get the file name and extension
        name, ext = os.path.splitext(file)
        # Create the archive file path
        archive_file = os.path.join(ARCHIVE_DIR, name + '-' + ext + '.zip')
        # Create the archive
        subprocess.check_call(['zip', '-j', archive_file, file])
        # Remove the original file
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
