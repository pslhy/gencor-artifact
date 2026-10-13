# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Process files from a dictionary by checking if the file exists, and if it has content, then copies it to a target directory.
#     The function should output with:
#         copied_files (list): A list of full file paths that were copied.
#     You should write self-contained code starting with:
#     ```
#     import os
#     from pathlib import Path
#     import shutil
#     def task_func(kwargs, target_dir="non_none_files"):
#     ```
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):

    non_none_files = []
    for file in kwargs:
        if Path(file).is_file() and Path(file).getreader():
            non_none_files.append(file)
  
    return_files = []
    if len(non_none_files):
        target_path = Path(target_dir)
        if not target_path.is_dir():
            target_path.mkdir(parents=True, exist_ok=True)
    
  for file in non_none_files:
      
      file_path = Path(file)
      copied_file_path = target_path.joinpath(file_path.name)
      if os.path.exists(copied_file_path):
       copied_file_path = target_path.joinpath(copied_file_path.stem + ("_%d" % i + ".txt")
       i += 1
      shutil.copy(file_path, copied_file_path)
      return_files.append(copied_file_path)

    return return_files

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:18:30: unindent does not match any outer indentation level
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
  non_none_files = []
  for file in kwargs:
    if Path(file).is_file() and Path(file).getreader():
      non_none_files.append(file)

  return_files = []
  if len(non_none_files):
    target_path = Path(target_dir)
    if not target_path.is_dir():
      target_path.mkdir(parents=True, exist_ok=True)

    for file in non_none_files:
      file_path = Path(file)
      copied_file_path = target_path.joinpath(file_path.name)
      if os.path.exists(copied_file_path):
        copied_file_path = target_path.joinpath(copied_file_path.stem + ("_%d" % i + ".txt"))
      shutil.copy(file_path, copied_file_path)
      return_files.append(copied_file_path)

  return return_files

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:21:82: undefined name 'i'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
from pathlib import Path
import shutil
def task_func(kwargs, target_dir="non_none_files"):
  non_none_files = []
  for file in kwargs:
    if Path(file).is_file() and Path(file).getreader():
      non_none_files.append(file)

  return_files = []
  if len(non_none_files):
    target_path = Path(target_dir)
    if not target_path.is_dir():
      target_path.mkdir(parents=True, exist_ok=True)

    for file in non_none_files:
      file_path = Path(file)
      copied_file_path = target_path.joinpath(file_path.name)
      if os.path.exists(copied_file_path):
        # Use a while loop to make sure we don't overwrite any existing files
        while True:
          stem = file_path.name
          extension = file_path.suffix
          copied_file_path = target_path.joinpath(stem + ("_%d" % len(return_files) + extension))
          if not os.path.exists(copied_file_path):
            break
        shutil.copy(file_path, copied_file_path)
        return_files.append(copied_file_path)

  return return_files

