from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    processes = []
    for file in file_list:
        p = subprocess.Popen([file])
        processes.append(p)
    for p in processes:
        p.wait()
    return [p.returncode for p in processes]

if __name__ == '__main__':
    file_list = ['file1.txt', 'file2.txt']
    result = task_func(file_list)
    print(f"Exit codes: {result}")


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
