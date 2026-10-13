from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # List all zip files in the directory with names that match the pattern
    zip_files = [f for f in os.listdir(directory) if re.match(pattern, f)]
    
    directories = []

    # Extract each zip file
    for zf in zip_files:
        # Extract the directory name from the filename
        dir_name = re.split(pattern, zf)[1]

        # If a directory with the same name doesn't exist, create it
        if not os.path.exists(os.path.join(directory, dir_name)):
            os.makedirs(os.path.join(directory, dir_name))

        zipfile.ZipFile(os.path.join(directory, zf), 'r').extractall(os.path.join(directory, dir_name))
        
        directories.append(dir_name)

    return directories


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
