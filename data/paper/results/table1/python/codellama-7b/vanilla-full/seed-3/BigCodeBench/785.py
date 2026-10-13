from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create temporary archive directory
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    # Get all files that match the pattern
    files = glob.glob(pattern)
    # Loop over files and archive them
    for file in files:
        # Get the file base name
        base_name = os.path.basename(file)
        # Create the archive name
        archive_file = f'{ARCHIVE_DIR}/{base_name}.zip'
        # Archive the file
        subprocess.run(['zip', '-j', archive_file, file])
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
