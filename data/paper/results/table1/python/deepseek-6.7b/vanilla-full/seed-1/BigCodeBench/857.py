from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    start_time = time.time()
    try:
        os.chdir(SOURCE_DIR)
    except FileNotFoundError as fnf_error:
        warnings.warn(f"Source directory {SOURCE_DIR} does not exist. Skipping copy.")
        return
    try:
        os.chdir(DEST_DIR)
    except FileNotFoundError as fnf_error:
        os.makedirs(DEST_DIR)
        os.chdir(DEST_DIR)
    except Exception as e:
        warnings.warn(f"Destination directory {DEST_DIR} error. Skipping copy.")
        return 
    files = []
    for ext in EXTENSIONS:
        files.extend(glob.glob(f"*.{ext}"))
    transferred_files = []
    for file in files:
        try:
            shutil.copy2(os.path.join(SOURCE_DIR, file), DEST_DIR)
            transferred_files.append(file)
        except Exception as e:
            warnings.warn(f"Failed to transfer {file}. Reason: {str(e)}")
    print(f"Transferred {len(transferred_files)} files in {timedelta(seconds=time.time()-start_time)}")
        
    return {'transferred_files': transferred_files}


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
