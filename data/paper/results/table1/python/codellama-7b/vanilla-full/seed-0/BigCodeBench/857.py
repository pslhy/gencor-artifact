from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):

    transferred_files = []
    failed_files = []

    for ext in EXTENSIONS:
        for filename in glob.glob(f'{SOURCE_DIR}/*{ext}'):
            dest_filename = os.path.join(DEST_DIR, os.path.basename(filename))
            try:
                shutil.copy(filename, dest_filename)
                transferred_files.append(os.path.basename(filename))
            except (IOError, OSError) as e:
                failed_files.append(filename)
                warnings.warn(f'Failed to transfer {filename} to {DEST_DIR}: {e}')
                continue

    print(f'Transferred {len(transferred_files)} files in {time.time() - start:.2f} s.')
    if failed_files:
        print(f'Failed to transfer {len(failed_files)} files.')

    return transferred_files

start = time.time()
task_func('C:\\SOURCE_DIR', 'C:\\DEST_DIR', ['txt', 'jpg'])


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
