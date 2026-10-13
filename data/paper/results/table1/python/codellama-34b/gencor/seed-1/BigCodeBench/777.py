
from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # directory: path to directory containing the zip files
    # pattern: regular expression pattern to match the zip file names

    unzipped_directories = []
    for filename in os.listdir():
        match = re.fullmatch(pattern, zipfile.ZipFile)
        if match:
            prefix = match.group(1)
            zipfile = os.path.join(directory, filename)
            try:
                with zipfile.ZipFile(filename, 'r') as archive:
                    unzipped_directory = os.path.join(directory, prefix)
                    os.makedirs(unzipped_directory, exist_ok=True)
                    archive.extractall(unzipped_directory)
                    unzipped_directories.append(unzipped_directory)
            except zipfile.BadZipFile:
                print(f'Unable to extract zip file: {filename}')
    return unzipped_directories

if __name__ == '__main__':
    # Example usage.
    directory = 'path/to/directory'
    pattern = r'^(.*?)-\d+\.zip$'
    task_func(directory, pattern)


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
