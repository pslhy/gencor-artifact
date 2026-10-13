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
    command = ""
    try:
        command = process_name + ".exe" if os.name == "nt" else process_name
        process = subprocess.getprocess(command)
        if process is not None:
            process.terminate()
            message = "Process found. Restarting {command}"
        else:
            subprocess.run(command, shell=True)
            time.sleep(0.5)
            message = "Process not found. Starting {command}"
    except:
        message = "Exception occurred when working with the process."
    return message.format(command)

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:44: undefined name 'os'
#     - <python>:9:30: undefined module member 'subprocess.getprocess'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    try:
        process = psutil.Process(process_name)
        if process.is_running():
            process.terminate()
            time.sleep(0.5)
            return "Process found. Restarting {process_name}"
        else:
            subprocess.run(process_name, shell=True)
            time.sleep(0.5)
            return "Process not found. Starting {process_name}"
    except:
        return "Exception occurred when working with the process."

