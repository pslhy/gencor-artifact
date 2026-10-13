from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    # Create a list of files to process
    files = []
    for filename in os.listdir(directory):
        if re.match(pattern, filename):
            files.append(os.path.join(directory, filename))
            
    # Create a list of new filenames
    new_filenames = []
    for filename in files:
        # Extract the name and index from the filename
        name, index = re.match(r'(.*?)-\d+', filename).groups()
        # Increment the index and format it as a filename
        index = int(index) + 1
        new_filename = f'{name}-{index:03}.csv'
        # Add the new filename to the list
        new_filenames.append(new_filename)
        
    # Process each file and create a new file with the incremented index
    new_files = []
    for filename in files:
        with open(filename, 'r', newline='') as csvfile:
            reader = csv.reader(csvfile)
            with open(new_filenames[files.index(filename)], 'w', newline='') as new_csvfile:
                writer = csv.writer(new_csvfile)
                writer.writerows(reader)
                new_files.append(new_filenames[files.index(filename)])
                
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
