# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Zip files with certain extensions from a source directory and save it as a zip file saved to a target directory.
#     Note that: The valid extensions are: ['.txt', '.docx', '.xlsx', '.csv'].
#     The function should raise the exception for: OSError: If the source_directory does not exist.
#     The function should output with:
#         str: The full path to the created zip file in the format "/path/to/target_directory/zip_name.zip".
#     You should write self-contained code starting with:
#     ```
#     import os
#     import glob
#     from pathlib import Path
#     import zipfile
#     def task_func(source_directory, target_directory, zip_name):
#     ```
from datetime import timedelta
import os
import glob
from pathlib import Path
import zipfile
def task_func(source_directory, target_directory, zip_name):
    # Check if source directory exists
    if not os.path.exists(source_directory):
        raise OSError(f"Directory '{source_directory}' does not exist.')
    # Check if target directory exists
    if not os.path.exists(target_directory):
        raise OSError(f"Directory '{target_directory}' does not exist.')
    # Create the target directory if it does not exist
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
    # Get the full path to the target zip file
    target_file = os.path.join(target_directory, f"{zip_name}.zip")
    # Create the zipfile
    with zipfile.ZipFile(target_file, "w") as zipfile:
        # Iterate through the list of files in the source directory
        for file in glob.glob(os.path.join(source_directory, "*")):
            # Get the extension of the file
            ext = os.path.splitext(file)[1]
            # Check if the file is valid
            if ext.lower() not in [".txt", ".docx", ".xlsx", ".csv"]:
                continue
            # Write the file to the zip file
            zipfile.write(file, arcname=os.path.basename(file), compress_type=zipfile.ZIP_DEFLATED)
    # Return the full path to the created zip file
    return target_file

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:23: unterminated f-string literal (detected at line 9)
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
from pathlib import Path
import zipfile
def task_func(source_directory, target_directory, zip_name):
    # Check if source directory exists
    if not os.path.exists(source_directory):
        raise OSError(f"Directory '{source_directory}' does not exist.')
    # Check if target directory exists
    if not os.path.exists(target_directory):
        raise OSError(f"Directory '{target_directory}' does not exist.')
    # Create the target directory if it does not exist
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
    # Get the full path to the target zip file
    target_file = os.path.join(target_directory, f"{zip_name}.zip")
    # Create the zipfile
    with zipfile.ZipFile(target_file, "w") as zipfile:
        # Iterate through the list of files in the source directory
        for file in glob.glob(os.path.join(source_directory, "*")):
            # Get the extension of the file
            ext = os.path.splitext(file)[1]
            # Check if the file is valid
            if ext.lower() not in [".txt", ".docx", ".xlsx", ".csv"]:
                continue
            # Write the file to the zip file
            zipfile.write(file, arcname=Path(file).name, compress_type=zipfile.ZIP_DEFLATED)
    # Return the full path to the created zip file
    return target_file

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:9:23: unterminated f-string literal (detected at line 9)
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import glob
from pathlib import Path
import zipfile
def task_func(source_directory, target_directory, zip_name):
    # Check if source directory exists
    if not os.path.exists(source_directory):
        raise OSError(f"Directory '{source_directory}' does not exist.")
    # Check if target directory exists
    if not os.path.exists(target_directory):
        raise OSError(f"Directory '{target_directory}' does not exist.")
    # Create the target directory if it does not exist
    if not os.path.exists(target_directory):
        os.makedirs(target_directory)
    # Get the full path to the target zip file
    target_file = os.path.join(target_directory, f"{zip_name}.zip")
    # Create the zipfile
    with zipfile.ZipFile(target_file, "w") as zipfile:
        # Iterate through the list of files in the source directory
        for file in glob.glob(os.path.join(source_directory, "*")):
            # Get the extension of the file
            ext = os.path.splitext(file)[1]
            # Check if the file is valid
            if ext.lower() not in [".txt", ".docx", ".xlsx", ".csv"]:
                continue
            # Write the file to the zip file
            zipfile.write(file, arcname=Path(file).name, compress_type=zipfile.ZIP_DEFLATED)
    # Return the full path to the created zip file
    return target_file

