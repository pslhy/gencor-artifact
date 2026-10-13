# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
    files = [file for file in glob.glob(os.path.join(directory_path, '*.bat'))]
    results = []
    for file in files:
        exit_code = None
        try:
            exit_code = subprocess.call(file, timeout=timedelta(seconds=15))
        except subprocess.TimeoutExpired:
            exit_code = -1
        results.append((file, exit_code))
    return results

