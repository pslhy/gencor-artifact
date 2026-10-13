from datetime import timedelta
import subprocess
import psutil
import time
def task_func(process_name: str) -> str:
    processes = [proc for proc in psutil.process_iter(['pid', 'name']) if proc.info['name'] == process_name]
    if not processes:
        start_process(process_name)
        return f"Process not found. Starting {process_name}."
    else:
        restart_process(processes)
        return f"Process found. Restarting {process_name}."
def start_process(process_name: str):
    subprocess.Popen(process_name)
def restart_process(processes: list):
    for proc in processes:
        proc.kill()
        wait_for_process_to_end(proc)
    subprocess.Popen(process_name)
def wait_for_process_to_end(process: psutil.Process, timeout: timedelta = timedelta(seconds=5)):
    end_time = time.time() + timeout.total_seconds()
    while process.is_running() and time.time() < end_time:
        time.sleep(0.1)
    if process.is_running():
        process.terminate()


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
