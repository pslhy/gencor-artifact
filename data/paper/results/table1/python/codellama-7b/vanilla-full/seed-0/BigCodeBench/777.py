from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):

    # Find all zip files in the directory that match the pattern
    zip_files = [os.path.join(directory, f) for f in os.listdir(directory) if re.match(pattern, f)]

    # Create a list to store the directories where the files were extracted
    extracted_dirs = []

    # Iterate over the zip files and extract the files
    for zip_file in zip_files:
        # Split the filename at the last occurrence of "-"
        filename = os.path.basename(zip_file)
        prefix, _ = filename.rsplit("-", 1)

        # Create a directory with the prefix as its name
        extract_dir = os.path.join(directory, prefix)
        os.makedirs(extract_dir, exist_ok=True)
        extracted_dirs.append(extract_dir)

        # Extract the files from the zip file
        with zipfile.ZipFile(zip_file, 'r') as zip:
            zip.extractall(extract_dir)

    return extracted_dirs


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
