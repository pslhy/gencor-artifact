from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    # Initialize the dictionary to store directory names and respective files
    result = {}

    # Get the current time
    start_time = datetime.now()

    # Iterate over each file in the directory
    for filename in os.listdir(directory):
        # Open the file
        with open(os.path.join(directory, filename), 'r') as file:
            # Read the file
            content = file.read()

            # Use regex to find the first text that is not enclosed in square brackets
            match = re.search(r'\[[^\]]*\]', content)

            # If a match is found, create a subdirectory with the matched substring
            if match:
                subdir = os.path.join(directory, match.group(0))
                if not os.path.exists(subdir):
                    os.makedirs(subdir)

                # Move the file to the subdirectory
                shutil.move(os.path.join(directory, filename), subdir)

                # Add the file to the dictionary, or append it to an existing list
                if subdir not in result:
                    result[subdir] = [filename]
                else:
                    result[subdir].append(filename)

    # Get the current time
    end_time = datetime.now()
    print(f"Execution time: {str(end_time - start_time)}")

    # Return the dictionary of organized files
    return directory, result


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Organize files in a directory based on the first text that is not enclosed in square brackets. Move the files to subdirectories named after this text. If no matching text is found, the file is not moved.
#     The function should output with:
#         tuple:
#         str: The directory path with organized files.
#         dict: A dictionary where keys are the created subdirectories and values are lists of files moved to them.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import shutil
#     from datetime import datetime
#     def task_func(directory):
#     ```
