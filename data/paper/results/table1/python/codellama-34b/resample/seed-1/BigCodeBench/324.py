# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Run files from list of files as subprocesses at the same time.
#     The function should output with:
#         list: The exit codes of the subprocesses.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import time
#     import threading
#     def task_func(file_list):
#     ```
from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    # Start all tasks at the same time
    proc = [subprocess.Popen([file], stdout=subprocess.PIPE) for file in file_list]
    # Wait for all tasks to complete
    for p in proc:
        p.communicate()
    # Return exit codes
    return [p.wait() for p in proc]

