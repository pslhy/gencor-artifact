# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Check if a particular process is running based on its name. If it is not running, start it using the process name as a command. If it is running, terminate the process and restart it by executing the process name as a command.
#     The function should output with:
#         str: A message indicating the action taken:
#         "Process not found. Starting <process_name>."
#         "Process found. Restarting <process_name>."
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import psutil
#     import time
#     def task_func(process_name: str) -> str:
#     ```
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:

    if not psutil.pid_exists(process_name):
        print(f"Process not found. Starting {process_name}...")
        command = f"{process_name} &>"
    else:
        print(f"Process found. Restarting {process_name}...")
        command = f"killall {process_name} &>"
        
    result = subprocess.run(command, shell=True, stdout=subprocess.OutputStream, stderr=subprocess.OutputStream,)
    return str(result.return_code)
    
task_func("example")

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:14:68: undefined module member 'subprocess.OutputStream'
#     - <python>:14:100: undefined module member 'subprocess.OutputStream'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    if not psutil.pid_exists(process_name):
        print(f"Process not found. Starting {process_name}...")
        result = subprocess.run(f"{process_name} &", shell=True, capture_output=True)
        return str(result.return_code)
    else:
        print(f"Process found. Restarting {process_name}...")
        result = subprocess.run(f"killall {process_name} &", shell=True, capture_output=True)
        result = subprocess.run(f"{process_name} &", shell=True, capture_output=True)
        return str(result.return_code)

task_func("example")

