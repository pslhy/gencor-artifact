from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    start_time = time.time()

    threads = []
    results = {}

    def run_file(i, file):
        process = subprocess.Popen(['python', file], stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        out, err = process.communicate()
        code = process.returncode
        results[file] = (i, code, out, err)

    for i, file in enumerate(file_list):
        thread = threading.Thread(target=run_file, args=(i, file))
        thread.start()
        threads.append(thread)

    for thread in threads:
        thread.join()

    end_time = time.time() - start_time
    print(f"\n Time taken: {str(timedelta(seconds=end_time))}")

    return results

file_list = ["file1.py", "file2.py", "file3.py", "file4.py"]
results = task_func(file_list)
for file in file_list:
    i, code, out, err = results[file]
    print(f"\nFile {file} executed in thread {i}.")
    print(f"Exit code: {code}.")
    if out:
        print(f"Output: {out.decode()}")
    if err:
        print(f"Error: {err.decode()}")


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
