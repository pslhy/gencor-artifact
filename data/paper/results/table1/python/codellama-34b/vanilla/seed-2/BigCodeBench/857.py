from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    """ Transfers files of specified extensions from SOURCE_DIR to DEST_DIR"""

    start = time.time()
    transferred_files = []

    for src_file in glob.iglob(os.path.join(SOURCE_DIR, '*' + EXTENSIONS):
        if os.path.exists(os.path.join(DEST_DIR, src_file)):
            warnings.warn("The file ", src_file, " already exists in the destination directory. Skipping...")
            continue

        try:
            shutil.move(os.path.join(SOURCE_DIR, src_file), DEST_DIR)
            transferred_files.append(src_file)
        except Exception as e:
            warnings.warn("Failed to transfer file ", src_file, " due to the following error:", e)

    end = time.time()
    print("Transferring files took", timedelta(seconds= end - start))
    return transferred_files


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
