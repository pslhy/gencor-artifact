from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    processes = []
    exit_codes = []
    start_time = time.time()
    for file in file_list:
        proc = subprocess.Popen(['python', file], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        processes.append(proc)

    for proc in processes:
        out, err = proc.communicate()
        exit_code = proc.returncode
        exit_codes.append(exit_code)  
    
    end_time = time.time()
    print(f"Time elapsed: {str(timedelta(seconds=end_time-start_time))}")

    return exit_codes


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
