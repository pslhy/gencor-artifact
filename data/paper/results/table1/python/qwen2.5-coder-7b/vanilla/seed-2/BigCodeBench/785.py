from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    
    # Find all files matching the pattern
    matched_files = glob.glob(pattern)
    
    # Create an archive file with a timestamp
    archive_file = os.path.join(ARCHIVE_DIR, f'archive_{datetime.now().strftime("%Y%m%d%H%M%S")}.tar.gz')
    
    # Create the archive using tar command
    subprocess.run(['tar', '-czf', archive_file] + matched_files)
    
    # Delete the original files
    for file in matched_files:
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
