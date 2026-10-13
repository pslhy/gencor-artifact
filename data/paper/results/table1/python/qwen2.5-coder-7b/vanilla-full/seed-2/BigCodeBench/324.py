from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    def run_file(file, result_list):
        result = subprocess.run(file, shell=True, capture_output=True, text=True)
        result_list.append(result.returncode)
    
    result_list = []
    threads = []
    
    for file in file_list:
        thread = threading.Thread(target=run_file, args=(file, result_list))
        threads.append(thread)
        thread.start()
    
    for thread in threads:
        thread.join()
    
    return result_list


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
