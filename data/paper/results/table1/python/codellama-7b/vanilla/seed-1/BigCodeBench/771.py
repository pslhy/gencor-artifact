from datetime import timedelta
import re
import os
from pathlib import Path
import csv
def task_func(directory: str, pattern: str = r'^(.*?)-\d+\.csv$') -> list:
    # Initialize a list to store the new filenames
    new_files = []

    # Iterate over the files in the directory
    for file in os.listdir(directory):
        # Check if the file name matches the given pattern
        match = re.match(pattern, file)
        if match:
            # Extract the base name and extension from the file name
            base_name = os.path.splitext(file)[0]
            base_name = base_name.split('-')[0]
            ext = os.path.splitext(file)[1]

            # Get the modified date of the file
            modified_date = datetime.fromtimestamp(os.path.getmtime(os.path.join(directory, file)))

            # Create a new file with the modified date as the filename
            new_file = f'{base_name}-{modified_date.strftime("%Y-%m-%d-%H-%M-%S")}{ext}'

            # Copy the contents of the original file to the new file
            with open(os.path.join(directory, file), 'r') as f_in:
                with open(os.path.join(directory, new_file), 'w') as f_out:
                    f_out.write(f_in.read())

            # Add the new file to the list of new filenames
            new_files.append(new_file)

    # Return the list of new filenames
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
