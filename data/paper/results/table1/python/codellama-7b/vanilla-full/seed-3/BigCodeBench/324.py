from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    # Create a list to store the exit codes
    exit_codes = []
    # Start a new thread for each file
    for file in file_list:
        # Create a new thread and run the file in it
        t = threading.Thread(target=subprocess.run, args=(file,))
        # Append the exit code of the thread to the list
        exit_codes.append(t.exitcode)
        # Start the thread
        t.start()
    # Wait for all threads to finish
    for t in threading.enumerate():
        if t.is_alive():
            t.join()
    # Return the list of exit codes
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
