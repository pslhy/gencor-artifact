
from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):

    transferred_files = []
    failed_files = []

    for extension in EXTENSIONS:
        for filename in glob.glob(os.path.join(SOURCE_DIR, f'*.{extension}')):
            basename = os.path.basename(filename)
            if not os.path.exists(os.path.join(DEST_DIR, basename)):
                try:
                    shutil.copy(filename, DEST_DIR)
                    transferred_files.append(basename)
                except shutil.Error:
                    warnings.warn(f'Could not transfer file {filename}')
                    failed_files.append(filename)
    
    # Calculate runtime duration
    end_time = time.time()
    runtime_duration = timedelta(seconds=end_time - task_func.start_time)

    # Print reports
    print(f'File transfer complete!')
    print(f'Transferred files: {transferred_files}')
    print(f'Failed files: {failed_files}')
    print(f'Runtime duration: {runtime_duration}')

    # Return transfer reports
    return transferred_files, failed_files, runtime_duration


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Transfer files from one directory (SOURCE_DIR) to another (DEST_DIR) based on the specified file extensions (EXTENSIONS). It also issues warnings for files that could not be transferred due to any issues.
#     The function should output with:
#         transferred_files (list): A list containing the names of files that were successfully transferred.
#     You should write self-contained code starting with:
#     ```
#     import warnings
#     import os
#     import glob
#     import shutil
#     import time
#     def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
#     ```
