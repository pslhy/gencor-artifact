from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    # Initialize variables
    todays_date = datetime.now().date()
    today_string = f"{todays_date.year:04d}{todays_date.month:02d}{todays_date.day:02d}"
    subdirs = {}
    file_list = []
    renamed_files = 0

    # Iterate over files in the directory
    for filename in os.listdir(directory):
        # Check if file is not in use
        if not os.path.exists(filename):
            continue

        # Get the first text in brackets
        match = re.search(r"\[(.*?)\]", filename)
        if match:
            # Get the text
            text = match.group(1)

            # Create the subdirectory if it doesn't exist
            subdir = f"{text[:2]}/{text[2:4]}/{text[4:6]}"
            if subdir not in subdirs:
                subdirs[subdir] = set()

            # Move the file to the subdirectory
            src = os.path.join(directory, filename)
            dst = os.path.join(subdir, filename)
            if os.path.exists(dst):
                os.remove(dst)
            shutil.move(src, dst)
            file_list.append(filename)
            renamed_files += 1

    # Return the result
    return (directory, subdirs)


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
