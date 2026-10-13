from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    started_at = time.time()
    transferred_files = []
    failed_files = []
    for ext in EXTENSIONS:
        source_paths = glob.glob(f"{SOURCE_DIR}/**/*{ext}", recursive=True)
        for source_path in source_paths:
            dest_path = os.path.join(DEST_DIR, os.path.basename(source_path))
            try:
                shutil.copy(source_path, dest_path)
                transferred_files.append(os.path.basename(source_path))
            except Exception as e:
                failed_files.append((source_path, dest_path))
                warnings.warn(
                    f"Failed to transfer file {source_path} to {dest_path}: {e}"
                )
    elapsed_time = time.time() - started_at
    print(f"Transferred {len(transferred_files)} files in {timedelta(seconds=elapsed_time)}")
    if failed_files:
        print(f"Failed to transfer {len(failed_files)} files:")
        for source_path, dest_path in failed_files:
            print(f"- {source_path} to {dest_path}")
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
