from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    process_list = []
    for file in file_list:
        process = subprocess.Popen(["python", file], stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
        process_list.append(process)
    results = []
    while process_list:
        for process in process_list:
            if process.poll() is not None:
                results.append(process.returncode)
                process_list.remove(process)
    return results


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
