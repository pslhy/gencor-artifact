from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create the archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Find matching files in the current directory
    files = glob.glob(pattern)

    # If no matching files are found, return an empty list
    if not files:
        return None

    # Archive the matching files by creating them in the archive directory
    archive_files = []
    for file in files:
        date_string = subprocess.check_output('date +%Y%m%d%H%M%S', shell=True).decode("utf-8").strip()
        archive_file_path = os.path.join(ARCHIVE_DIR, f"{date_string}_{os.path.basename(file)}")
        os.rename(file, archive_file_path)
        archive_files.append(archive_file_path)

    return archive_files


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
