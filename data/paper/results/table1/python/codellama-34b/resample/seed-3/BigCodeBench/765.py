# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Process files from a dictionary by checking if the file exists, and if it has content, then copies it to a target directory.
#     The function should output with:
#         copied_files (list): A list of full file paths that were copied.
#     You should write self-contained code starting with:
#     ```
#     import os
#     from pathlib import Path
#     import shutil
#     def task_func(kwargs, target_dir="non_none_files"):
#     ```
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    files_to_process = process_files_from(source_dir=kwargs, file_extension=".txt")
    copied_files = []
    for filename in files_to_process:
        source_filepath = os.path.join(kwargs["source_dir"], filename)
        if os.path.isfile(source_filepath) and os.path.getsize(source_filepath) > 0:
            target_filepath = os.path.join(os.path.join(kwargs["target_dir"], filename))
            shutil.copyfile(source_filepath, target_filepath)
            copied_files.append(target_filepath)
    print(f"Copied {len(copied_files)} files to {target_dir}")
    return copied_files

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:24: undefined name 'process_files_from'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    files_to_process = get_files_to_process(kwargs["source_dir"], kwargs["file_extension"])
    copied_files = []
    for filename in files_to_process:
        source_filepath = os.path.join(kwargs["source_dir"], filename)
        if os.path.isfile(source_filepath) and os.path.getsize(source_filepath) > 0:
            target_filepath = os.path.join(target_dir, filename)
            shutil.copyfile(source_filepath, target_filepath)
            copied_files.append(target_filepath)
    print(f"Copied {len(copied_files)} files to {target_dir}")
    return copied_files

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:6:24: undefined name 'get_files_to_process'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    files_to_process = []
    for root, dirs, files in os.walk(kwargs["source_dir"]):
        for file in files:
            if file.endswith(kwargs["file_extension"]):
                files_to_process.append(os.path.join(root, file))

    copied_files = []
    for filename in files_to_process:
        source_filepath = os.path.join(kwargs["source_dir"], filename)
        if os.path.isfile(source_filepath) and os.path.getsize(source_filepath) > 0:
            target_filepath = os.path.join(target_dir, filename)
            shutil.copyfile(source_filepath, target_filepath)
            copied_files.append(target_filepath)
    print(f"Copied {len(copied_files)} files to {target_dir}")
    return copied_files

