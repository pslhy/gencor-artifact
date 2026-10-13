from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    # Get a list of all files in the directory
    files = os.listdir(directory)
    
    new_files = []
    # Process each file in the directory
    for file in files:
        # Check if the file matches the pattern
        if re.match(pattern, file):
            # Get the base name of the file
            base_name = os.path.basename(file)
            # Get the file name and extension
            file_name, file_extension = os.path.splitext(base_name)
            
            # Alter the file name and create a new file
            new_file_name = file_name + '-new' + file_extension
            new_file_path = os.path.join(directory, new_file_name)
            new_files.append(new_file_name)
            
            # Preserve the content of the original file
            with open(new_file_path, 'w', newline='') as new_file:
                with open(os.path.join(directory, file), 'r') as original_file:
                    reader = csv.reader(original_file)
                    writer = csv.writer(new_file)
                    
                    # Copy the rows from the original file to the new file
                    for row in reader:
                        writer.writerow(row)
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
