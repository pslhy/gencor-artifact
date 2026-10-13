from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # Get a list of all files in the directory
    files = os.listdir(directory)
    # Loop through each file and extract it if it matches the pattern
    extracted_dirs = []
    for file in files:
        if re.match(pattern, file):
            # Split the file name on the last occurrence of -
            name, num = file.rsplit('-', 1)
            # Create the directory if it doesn't exist
            dir_name = name + '_extracted'
            if not os.path.exists(dir_name):
                os.makedirs(dir_name)
            # Extract the file to the new directory
            with zipfile.ZipFile(file) as zf:
                zf.extractall(dir_name)
            # Add the directory to the list
            extracted_dirs.append(dir_name)
    return extracted_dirs
# Test the function
directory = 'path/to/directory'
pattern = r'^(.*?)-\d+\.zip$'
extracted_dirs = task_func(directory, pattern)
print(extracted_dirs)


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
