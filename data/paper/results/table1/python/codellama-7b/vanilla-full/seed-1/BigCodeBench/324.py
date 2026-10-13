from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    # Start a thread to run each file in the list
    threads = []
    for file in file_list:
        t = threading.Thread(target=run_process, args=(file,))
        t.start()
        threads.append(t)
    
    # Wait for all threads to complete
    for t in threads:
        t.join()
    
    # Collect the exit codes of the subprocesses
    exit_codes = [t.exit_code for t in threads]
    
    # Return the list of exit codes
    return exit_codes

def run_process(file):
    # Create a subprocess to run the given file
    p = subprocess.Popen([file], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    
    # Wait for the subprocess to finish
    p.communicate()
    
    # Return the exit code of the subprocess
    return p.returncode

if __name__=="__main__":
    file_list = ["file1.txt", "file2.txt", "file3.txt"]
    exit_codes = task_func(file_list)
    print(exit_codes)


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
