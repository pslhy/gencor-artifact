
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
    files_to_process = set(kwargs.values())
    copied_files = []
    # Iterate through the files and process them
    for filename in files_to_process:
        # Check if the file exists and has content
        filepath = Path(filename)
        if filepath.is_file() and filepath.stat().st_size > 0:
            print(f"Processing {filename}")
            # Copy the file to the target directory
            shutil.copy(filename, target_dir)
            # Get the full file path of the copied file
            copied_file = os.path.join(target_dir, filename)
            # Add the full file path to the list of copied files
            copied_files.append(copied_file)
    return copied_files

# Example usage
file_list = {
    "file1.txt": "/path/to/file1.txt",
    "file2.txt": "/path/to/file2.txt",
    "file3.txt": "/path/to/file3.txt"
}
copied_files = task_func(file_list)
print(copied_files)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
