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
        os.makedirs(ARCHIVE_DIR)
    
    # Find all files that match the pattern
    matching_files = glob.glob(pattern)
    
    if not matching_files:
        raise ValueError("No files found matching the pattern: {}".format(pattern))
    
    # Create a timestamped archive file name
    timestamp = datetime.now().strftime('%Y%m%d%H%M%S')
    archive_file = os.path.join(ARCHIVE_DIR, 'archive_{}.tar.gz'.format(timestamp))
    
    # Command to create a tar archive
    command = ['tar', '-czf', archive_file]
    command.extend(matching_files)
    
    # Execute the command
    subprocess.run(command, check=True)
    
    # Remove the original files
    for file in matching_files:
        os.remove(file)
    
    # Return the path to the archive file
    return archive_file

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:19:17: undefined name 'datetime'
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
        os.makedirs(ARCHIVE_DIR)
    
    # Find all files that match the pattern
    matching_files = glob.glob(pattern)
    
    if not matching_files:
        raise ValueError("No files found matching the pattern: {}".format(pattern))
    
    # Create a timestamped archive file name
    timestamp = datetime.now().strftime('%Y%m%d%H%M%S')
    archive_file = os.path.join(ARCHIVE_DIR, 'archive_{}.tar.gz'.format(timestamp))
    
    # Command to create a tar archive
    command = ['tar', '-czf', archive_file]
    command.extend(matching_files)
    
    # Execute the command
    subprocess.run(command, check=True)
    
    # Remove the original files
    for file in matching_files:
        os.remove(file)
    
    # Return the path to the archive file
    return archive_file

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:19:17: undefined name 'datetime'
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
        os.makedirs(ARCHIVE_DIR)
    
    # Find all files that match the pattern
    matching_files = glob.glob(pattern)
    
    if not matching_files:
        raise ValueError("No files found matching the pattern: {}".format(pattern))
    
    # Create a timestamped archive file name
    from datetime import datetime
    timestamp = datetime.now().strftime('%Y%m%d%H%M%S')
    archive_file = os.path.join(ARCHIVE_DIR, 'archive_{}.tar.gz'.format(timestamp))
    
    # Command to create a tar archive
    command = ['tar', '-czf', archive_file]
    command.extend(matching_files)
    
    # Execute the command
    subprocess.run(command, check=True)
    
    # Remove the original files
    for file in matching_files:
        os.remove(file)
    
    # Return the path to the archive file
    return archive_file

