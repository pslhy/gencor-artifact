from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # List of files that matches the pattern
    files = glob.glob(pattern)
    
    # Error if no files match the pattern
    if not files:
        raise ValueError(f"No files found for pattern: {pattern}")
    
    # Create archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)
    
    # Archive files
    for file in files:
        # Generate archive file path
        archive_file = os.path.join(ARCHIVE_DIR, os.path.basename(file) + '.tar.gz')
        
        # Create archive
        subprocess.call(['tar', '-zcvf', archive_file, file])
        
        # Delete original file
        os.remove(file)
        
        # Return archive file path
        yield archive_file


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
