# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    """
    Renames all CSV files in a specified directory by matching and replacing the given pattern

    :param directory: the input directory where the CSV files are located
    :param pattern: the pattern to match and replace in the file names
    :return: a list of the new file names
    """
    # Extract the directory path and make sure it exists
    dir_path = Path(directory)
    if not dir_path.exists():
        raise ValueError(f"Directory '{directory}' does not exist")
    
    # Find all CSV files within the directory and its subdirectories
    csv_files = dir_path.glob('**/*.csv')
    new_file_names = []
    for file in csv_files:
        file_name = file.name
        match = re.search(pattern, file_name)
        if match:
            stem = match.group(1)
            num = int(match.group(2))
            new_name = f'{stem}-{num:03d}.csv'
            file.replace(new_name)
            new_file_names.append(new_name)
    return new_file_names

