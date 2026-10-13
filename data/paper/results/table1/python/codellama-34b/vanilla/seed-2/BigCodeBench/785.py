from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create the archive directory if it doesn't exist already
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    # Get the list of files that match the pattern
    file_paths = [os.path.join(ARCHIVE_DIR, f) for f in os.listdir(ARCHIVE_DIR) if f.startswith(pattern)]
    # Archive the files
    archive_file = f"{pattern}_files.zip"
    with zipfile.ZipFile(os.path.join(ARCHIVE_DIR, archive_file), "w") as z:
        for file in file_paths:
            z.write(file, os.path.basename(file))
    # Remove the original files
    for file in file_paths:
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
