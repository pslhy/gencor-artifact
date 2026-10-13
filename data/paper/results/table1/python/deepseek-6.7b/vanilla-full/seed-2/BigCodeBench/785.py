from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # create archive directory if not exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # find all files that match the pattern
    files = glob.glob(pattern)

    # archive the found files
    for file_path in files:
        # create archive file name
        file_name = os.path.basename(file_path)
        archive_file = os.path.join(ARCHIVE_DIR, file_name + '.bak')

        # archive the file
        with open(archive_file, 'w') as f:
            f.write('Archived from ' + file_path)

        # delete the original file
        os.remove(file_path)

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
