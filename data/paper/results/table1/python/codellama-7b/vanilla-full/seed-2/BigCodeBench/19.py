from datetime import timedelta
import os
import glob
import zipfile
def task_func(directory):
    # Check if the directory exists
    if not os.path.exists(directory):
        raise FileNotFoundError(f"The specified directory '{directory}' does not exist.")
    # Get the full path to the directory
    directory = os.path.abspath(directory)
    # Check if the directory is empty
    if not os.listdir(directory):
        return None
    # Get a list of all files in the directory
    files = glob.glob(os.path.join(directory, "**"), recursive=True)
    # Create the zip file
    with zipfile.ZipFile('files.zip', 'w', compression=zipfile.ZIP_DEFLATED) as zip_file:
        for file in files:
            # Get the relative path of the file
            arcname = os.path.relpath(file, directory)
            # Add the file to the zip file
            zip_file.write(file, arcname)
    # Return the path to the generated zip file
    return os.path.join(directory, "files.zip")


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
