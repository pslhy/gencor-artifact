from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    transferred_files = []
    start_time = time.time()
    warnings.filterwarnings('ignore', category=UserWarning)
    for ext in EXTENSIONS:
        pattern = os.path.join(SOURCE_DIR, f'*.{ext}')
        for file_path in glob.glob(pattern):
            try:
                relative_path = os.path.relpath(file_path, SOURCE_DIR)
                dest_file_path = os.path.join(DEST_DIR, relative_path)
                os.makedirs(os.path.dirname(dest_file_path), exist_ok=True)
                shutil.move(file_path, dest_file_path)
                transferred_files.append(relative_path)
            except Exception as e:
                warnings.warn(f"Failed to transfer {file_path}: {e}")
    end_time = time.time()
    print("Task completed in", str(timedelta(seconds=end_time - start_time)))
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
