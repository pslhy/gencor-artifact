from datetime import timedelta
import subprocess
import time
import threading
def task_func(file_list):
  process = subprocess.Popen(file_list,
  process = subprocess.Popen(file_list,
CompletableFuture<Void>
  incomplete_futures = []
  for file in file_list:
    incomplete_futures.append(run_file(file))
  completed = 0
  while completed < len(file_list):
    for i in range(len(incomplete_futures)):
      result = incomplete_futures[i].done()
      if result is None:
        completed += 1
        break
    if result is not None:
      completed += 1
    else:
      time.sleep(DEADLINE / len(file_list))


def run_file(file):
  return subprocess.Popen(file)

def get_exit_codes(completed_tasks):
  return [task.result() for task in completed_tasks]
  
task_func(file_list)



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
