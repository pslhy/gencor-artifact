from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
    command = ""
    for file in file_list:
        command += f"python {file} "
    command = command.strip()
    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    while process.poll() is None:
        time.sleep(timedelta(milliseconds=100))
    _, _ = process.communicate()
    return process.returncode

def main():
    file_list = ["my_file_1.py", "my_file_2.py", "my_file_3.py"]
    results = []
    threads = []
    for file in file_list:
        t = threading.Thread(target=task_func, args=(file,), daemon=True)
        threads.append(t)
        t.start()
    for t in threads:
        t.join()
        results.append(t.exit_code)
    return results

if __name__ == "__main__":
    results = main()
    print(results)


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
