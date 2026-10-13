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
    process_name = process_name.strip()
    while True:
        if not psutil.process_exists(process_name):
            subprocess.Popen(process_name)
            return f"Process not found. Starting {process_name}."
        else:
            subprocess.Popen(f"taskkill /im {process_name}").wait(
                    timedelta(seconds=5))
            time.sleep(1)
    return f"Process found. Restarting {process_name}."

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:23: undefined module member 'psutil.process_exists'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
	process_name = process_name.strip()
    while True:
        if not psutil.process_exists(process_name):
            subprocess.Popen(process_name)
            return f"Process not found. Starting {process_name}."
        else:
            subprocess.Popen(f"taskkill /im {process_name}").wait(
                    timedelta(seconds=5))
            time.sleep(1)
    return f"Process found. Restarting {process_name}."

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:16: unindent does not match any outer indentation level
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    process_name = process_name.strip()
    while True:
        if not psutil.process_exists(process_name):
            subprocess.Popen(process_name)
            return f"Process not found. Starting {process_name}."
        else:
            subprocess.Popen(f"taskkill /im {process_name}").wait(
                    timedelta(seconds=5))
            time.sleep(1)
    return f"Process found. Restarting {process_name}."

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:23: undefined module member 'psutil.process_exists'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    process_name = process_name.strip()
    while True:
        try:
            psutil.wait_procs(psutil.process(process_name), timeout=5)
            return f"Process found. Restarting {process_name}."
        except psutil.NoSuchProcess:
            subprocess.Popen(process_name)
            return f"Process not found. Starting {process_name}."

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:38: undefined module member 'psutil.process'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    process_name = process_name.strip()
    while True:
        try:
            psutil.wait_procs([psutil.Process(process_name)], timeout=5)
            return f"Process found. Restarting {process_name}."
        except psutil.NoSuchProcess:
            subprocess.Popen(process_name)
            return f"Process not found. Starting {process_name}."

