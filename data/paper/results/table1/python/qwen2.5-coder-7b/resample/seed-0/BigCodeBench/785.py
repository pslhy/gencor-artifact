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

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:19:76: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
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

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:19:76: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
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

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:19:76: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
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
    import datetime
    archive_file_name = os.path.join(ARCHIVE_DIR, f"archive_{os.getpid()}_{datetime.datetime.now().strftime('%Y%m%d%H%M%S')}.tar.gz")
    
    # Create the archive using tar command
    subprocess.run(['tar', '-czf', archive_file_name] + files_to_archive)
    
    # Delete the original files
    for file in files_to_archive:
        os.remove(file)
    
    return archive_file_name

