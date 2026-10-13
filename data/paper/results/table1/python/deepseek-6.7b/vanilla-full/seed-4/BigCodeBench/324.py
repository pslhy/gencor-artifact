from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    # Create a list to hold the threads
    threads = []

    # Create a list to hold the exit codes
    exit_codes = []

    # Start each subprocess in a new thread
    for file in file_list:
        thread = threading.Thread(target=run_subprocess, args=(file, exit_codes))
        threads.append(thread)
        thread.start()

    # Wait for all threads to complete
    for thread in threads:
        thread.join()

    return exit_codes

def run_subprocess(file, exit_codes):
    # Run the subprocess
    result = subprocess.run([file], stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)

    # Get the exit code and add it to the list
    exit_codes.append(result.returncode)


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
