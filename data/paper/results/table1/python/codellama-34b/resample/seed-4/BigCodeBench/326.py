# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Find and run all .bat files in a given directory, returning their file names and exit codes.
#     The function should output with:
#         list of tuples: A list where each tuple contains the file name and its exit code.
#         The exit code is None if the file could not be executed.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import sys
#     import glob
#     def task_func(directory_path):
#     ```
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
  bat_files=glob.glob(directory_path+"\\*.bat")
  task_list=[]
  for bat_file in bat_files:
    try:
      start=datetime.now()
      subprocess.run([bat_file])
      end=datetime.now()
      execution_time=(end-start).total_seconds()
      task_list.append((bat_file, execution_time))
  return task_list

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:16:2: expected 'except' or 'finally' block
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
  bat_files = glob.glob(directory_path + "\\*.bat")
  task_list = []
  for bat_file in bat_files:
    try:
      start = datetime.now()
      subprocess.run([bat_file])
      print("Success")
    except:
      print("Failed")
    finally:
      end = datetime.now()
      execution_time = (end-start).total_seconds()
      task_list.append((bat_file, execution_time))
  return task_list

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:11:15: undefined name 'datetime'
#     - <python>:17:13: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
  bat_files = glob.glob(directory_path + "\\*.bat")
  task_list = []
  for bat_file in bat_files:
    try:
      start_time = datetime.now()
      subprocess.run([bat_file])
      print("Success")
    except:
      print("Failed")
    finally:
      end_time = datetime.now()
      execution_time = (end_time-start_time).total_seconds()
      task_list.append((bat_file, execution_time))
  return task_list

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:11:20: undefined name 'datetime'
#     - <python>:17:18: undefined name 'datetime'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import subprocess
import os
import sys
import glob
def task_func(directory_path):
    bat_files = glob.glob(directory_path + "\\*.bat")
    task_list = []
    for bat_file in bat_files:
        try:
            start_time = timedelta.now()
            subprocess.run([bat_file])
            print("Success")
        except:
            print("Failed")
        finally:
            end_time = timedelta.now()
            execution_time = (end_time-start_time).total_seconds()
            task_list.append((bat_file, execution_time))
    return task_list

