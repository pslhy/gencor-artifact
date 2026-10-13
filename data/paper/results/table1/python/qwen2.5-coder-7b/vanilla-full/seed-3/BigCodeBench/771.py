from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    directory_path = Path(directory)
    input_files = list(directory_path.glob pattern + '.csv'))
    new_files = []

    for file_path in input_files:
        with open(file_path, mode='r', newline='') as file:
            reader = csv.reader(file)
            rows = list(reader)

        # Assume the first row contains headers and the second row contains date
        headers = rows[0]
        date_str = rows[1][0]

        # Parse the date string and add a day
        date_format = '%Y-%m-%d'
        date_obj = datetime.strptime(date_str, date_format)
        new_date_obj = date_obj + timedelta(days=1)
        new_date_str = new_date_obj.strftime(date_format)

        # Replace the date in the file
        rows[1][0] = new_date_str

        # Create a new filename based on the pattern
        new_filename = re.sub(pattern, r'\1_new.csv', file_path.name)
        new_path = directory_path / new_filename

        # Write the modified rows back to a new file
        with open(new_path, mode='w', newline='') as file:
            writer = csv.writer(file)
            writer.writerows(rows)

        new_files.append(new_filename)

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
