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


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
