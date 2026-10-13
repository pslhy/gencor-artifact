from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    #validate pattern
    if not re.match(pattern, 'filename-123.csv'):
        raise ValueError("Pattern not correctly applied")
   
    path = Path(directory)
    new_files = []
    if not path.exists():
        raise FileNotFoundError(f"{directory} does not exist")
    elif not path.is_dir():
        raise NotADirectoryError(f"{directory} is not a directory")
    else:
        #loop over all files in directory
        for filename in os.listdir(directory):
            if re.match(pattern, filename): 
                #split file name and extension
                file_stem, file_ext = os.path.splitext(filename)
                #process filename (modify it)
                new_filename = re.sub(pattern, r'\1.csv', filename)
                new_files.append(new_filename)
                #create new file with new name and copy old file content to it
                with open(os.path.join(directory, new_filename), 'w', newline='') as new_file:
                    writer = csv.writer(new_file)
                    with open(os.path.join(directory, filename), 'r') as old_file:
                        reader = csv.reader(old_file)
                        for line in reader:
                            writer.writerow(line)
    return new_files


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Processes CSV files in a directory based on a specified pattern and creates new files with altered names while preserving the content, you've laid out a solid foundation with your initial tests.
#     The function should output with:
#         new_files (list): A list of strings, where each string is the filename of a new CSV file created by the function.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     from pathlib import Path
#     import csv
#     def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
#     ```
