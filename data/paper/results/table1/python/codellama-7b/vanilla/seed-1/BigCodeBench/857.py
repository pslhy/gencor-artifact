from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    # Initialize variables
    transferred_files = []
    transferred_size = 0
    failures = []

    # Check if directories exist
    if not os.path.exists(SOURCE_DIR):
        warnings.warn(f"Source directory {SOURCE_DIR} does not exist")
        return (transferred_files, transferred_size, failures)
    if not os.path.exists(DEST_DIR):
        warnings.warn(f"Destination directory {DEST_DIR} does not exist")
        return (transferred_files, transferred_size, failures)

    # Get list of filenames in source directory
    files = []
    for ext in EXTENSIONS:
        files = files + glob.glob(os.path.join(SOURCE_DIR, f"*.{ext}"))

    # Transfer files
    for file in files:
        try:
            shutil.copy2(file, DEST_DIR)
            transferred_files.append(os.path.basename(file))
            transferred_size += os.path.getsize(file)
        except Exception as e:
            failures.append((file, e))
            warnings.warn(f"Failed to transfer {file}: {e}")

    # Compute time taken
    time_taken = time.perf_counter() - start

    return (transferred_files, transferred_size, failures, time_taken)


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
