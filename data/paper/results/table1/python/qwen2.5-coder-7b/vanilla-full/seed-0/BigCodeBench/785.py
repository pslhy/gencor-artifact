from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create the archive directory if it doesn't exist
    if not os.path.exists(ARCHIVE_DIR):
        os.mkdir(ARCHIVE_DIR)
    
    # Find all files matching the pattern
    files_to_archive = glob.glob(pattern)
    
    if not files_to_archive:
        return "No files found matching the pattern"
    
    # Generate an archive file name based on the current time
    archive_file_name = os.path.join(ARCHIVE_DIR, f"archive_{os.getpid()}_{datetime.now().strftime('%Y%m%d%H%M%S')}.tar.gz")
    
    # Create the archive using tar command
    subprocess.run(['tar', '-czf', archive_file_name] + files_to_archive)
    
    # Delete the original files
    for file in files_to_archive:
        os.remove(file)
    
    return archive_file_name


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
