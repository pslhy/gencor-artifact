from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):
    # Check if the directory exists
    if not os.path.exists(directory):
        raise FileNotFoundError(f"Directory {directory} does not exist")

    # Get the list of files in the directory
    files_in_dir = glob.glob(os.path.join(directory, "**/*"), recursive=True)

    # Filter out subdirectories
    files_in_dir = [file for file in files_in_dir if os.path.isfile(file)]

    if len(files_in_dir) == 0:
        return None

    # Create the zip file in the same directory
    zip_file_name = os.path.join(directory, "files.zip")
    with zipfile.ZipFile(zip_file_name, "w", compression=zipfile.ZIP_DEFLATED) as zip_file:
        for file in files_in_dir:
            zip_file.write(file, os.path.basename(file))

    return zip_file_name


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Zips all files (not including subdirectories) located in the specified directory and returns the path to the created zip file.
#     Note that: Notes: The zip name is always 'files.zip'
#     The function should raise the exception for: FileNotFoundError: if the specified directory does not exist
#     The function should output with:
#         str: The path to the generated zip file. Returns None if the directory does not contain any files.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import glob
#     import zipfile
#     def task_func(directory):
#     ```
