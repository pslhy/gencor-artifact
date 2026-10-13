# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
  glob = re.findall(pattern, os.listdir(directory))
  task_files = [f.name for f in os.scandir(directory) if f.is_file()]
  list_of_unnested_files = []
  directory_to_use = os.path.basename(os.path.join(directory,g.group(1))))
  for result in [(glob, directory_to_use) for glob, directory_to_use in zip(glob, directory_to_use) if os.path.isfile(os.path.join(directory, glob))]:
    directory_to_extract_to = result[1]
    zf = zipfile.ZipFile(result[0])
    for zf_name in zf.namelist():
      if zf_name.endswith("/"):
        zf.extract(zf_name, directory_to_extract_to)
   return directory_to_use     

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:74: unmatched ')'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    glob = re.findall(pattern, os.listdir(directory))
    task_files = [f.name for f in os.scandir(directory) if f.is_file()]
    list_of_unnested_files = []
    directory_to_use = os.path.basename(os.path.join(directory,g.group(1))))
    for result in [( glob, directory_to_use ) for (glob, directory_to_use) in zip(glob, directory_to_use) if os.path.isfile(os.path.join(directory, glob))]:
        directory_to_extract_to = result[1]
        zf = zipfile.ZipFile(result[0])
        for zf_name in zf.namelist():
            if zf_name.endswith("/"):
                zf.extract(zf_name, directory_to_extract_to)
    return directory_to_use

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:76: unmatched ')'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    glob = re.findall(pattern, os.listdir(directory))
    task_files = [f.name for f in os.scandir(directory) if f.is_file()]
    list_of_unnested_files = []
    directory_to_use = os.path.basename(os.path.join(directory,glob[0]))
    for result in [( glob, directory_to_use ) for (glob, directory_to_use) in zip(glob, directory_to_use) if os.path.isfile(os.path.join(directory, glob))]:
        directory_to_extract_to = result[1]
        zf = zipfile.ZipFile(result[0])
        for zf_name in zf.namelist():
            if zf_name.endswith("/"):
                zf.extract(zf_name, directory_to_extract_to)
    return directory_to_use

