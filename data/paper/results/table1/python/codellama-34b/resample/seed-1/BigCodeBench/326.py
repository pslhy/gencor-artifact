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
    file_list = [f for f in os.listdir(directory_path) if f.endswith('.bat') or f.endswith('.ps1')]
    for file_name in file_list:
        try:
            exit_code = subprocess.check_call([file_name])
            print(f"Execution of {file_name}: completed")
            yield (str(file_name) + "." + str(exit_code)),
        except subprocess.CalledProcessError as e:
            print(f"Execution of {file_name}: failed with error message {e}")
        except Exception as e:
            print(f"Execution of {file_name}: failed with error message {e}")
            yield str(file_name), None

