
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
  glob = re.findall(pattern, os.listdir(directory))
  task_files = [f.name for f in os.scandir(directory) if f.is_file()]
  list_of_unnested_files = []
  directory_to_use = os.path.basename(os.path.join(directory,g.group(1)) for g in glob)
  for file in task_files:
      directory_of_zip = file.findall(r'-(.*?).zip$')
      if directory_of_zip:
        break
  try:
      with zipfile.ZipFile(file) as zip_f:
        zip_f.extractall(directory)
        list_of_unnested_files.append(file)
  except (zipfile.BadZipFile, zipfile.LargeZipFile):
      pass
  os.remove(file)
  return list_of_unnested_files     


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Unzip all zip files in a directory whose name matches a certain pattern by splitting the filename the last time "-" occurs and using the prefix part of the filename as the directory to extract.
#     The function should output with:
#         list: A list of directories where the files were extracted.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import zipfile
#     def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
#     ```
