import signal

from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):

    def run_subprocess(file):
        process = subprocess.Popen([file], shell=True)
        try:
            return process.wait(timeout=timedelta(seconds=15))
        except subprocess.TimeoutExpired:
            process.kill()
            return int(signal.SIGKILL)
    
    threads = []
    for file in file_list:
        t = threading.Thread(target=run_subprocess, args=(file,))
        t.daemon = True
        threads.append(t)
        t.start()
    
    for t in threads:
        t.join()
    
    return [process.returncode for process in threads]


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
