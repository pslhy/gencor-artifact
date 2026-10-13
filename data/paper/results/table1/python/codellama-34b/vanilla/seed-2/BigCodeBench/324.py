from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    command = ""
    for file in file_list:
        command += "printf 'Hello' &&"
    command = command[:-1]
    p = subprocess.Popen(command,stdout = subprocess.PIPE, stderr = subprocess.STDOUT, shell = True)
    for i in range(5):
        time.sleep(1)
        print(p.poll() != 0)
task_func(["foo.py", "bar.py"])


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
