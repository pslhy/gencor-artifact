from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    results = []

    def run_command(file):
        start = time.time()
        proc = subprocess.Popen(file, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True)
        stdout, stderr = proc.communicate()
        end = time.time()
        results.append((file, proc.returncode, timedelta(seconds=end - start), stdout, stderr))

    threads = [threading.Thread(target=run_command, args=(file,)) for file in file_list]
    for thread in threads: thread.start()
    for thread in threads: thread.join()

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
