from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
    results = []

    for filename in glob.iglob(directory_path + '/**/*.bat', recursive=True):
        if os.path.isfile(filename):
            try:
                exit_code = subprocess.run(["cmd", "/c", filename], check=True, timeout=30,
                                            stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL).returncode
                results.append((filename, exit_code))
            except subprocess.TimeoutExpired:
                results.append((filename, None))
            except Exception:
                results.append((filename, None))

    return results


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
