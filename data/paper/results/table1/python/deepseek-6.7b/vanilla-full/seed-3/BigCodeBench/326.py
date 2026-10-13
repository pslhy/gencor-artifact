from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
    result = []
    if not os.path.exists(directory_path):
        return "Directory not found"
    else:
        for file in glob.glob(f'{directory_path}/*.bat'):
            try:
                process = subprocess.run(f'{file}', capture_output=True, shell=True, text=True, timeout=10)
                result.append((file, process.returncode))
            except (subprocess.TimeoutExpired, FileNotFoundError):
                result.append((file, None))
    return result


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Find and run all .bat files in a given directory, returning their file names and exit codes.
#     The function should output with:
#         list of tuples: A list where each tuple contains the file name and its exit code.
#         The exit code is None if the file could not be executed.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import sys
#     import glob
#     def task_func(directory_path):
#     ```
