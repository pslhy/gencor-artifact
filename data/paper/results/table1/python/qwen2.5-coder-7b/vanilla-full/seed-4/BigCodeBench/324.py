from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    def run_subprocess(file_path):
        try:
            process = subprocess.run(['python', file_path], capture_output=True, text=True, check=True)
            print(f"File {file_path} completed with exit code {process.returncode}")
            return process.returncode
        except subprocess.CalledProcessError as e:
            print(f"File {file_path} failed with exit code {e.returncode}")
            return e.returncode

    threads = []
    results = []

    for file_path in file_list:
        thread = threading.Thread(target=run_subprocess, args=(file_path,))
        threads.append(thread)
        thread.start()

    for thread in threads:
        thread.join()
        results.append(thread.result())

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
