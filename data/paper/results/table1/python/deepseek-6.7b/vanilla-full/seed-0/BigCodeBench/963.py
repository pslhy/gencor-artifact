from datetime import timedelta
import os
import glob
from pathlib import Path
import zipfile
def task_func(source_directory, target_directory, zip_name):
    # validate if source directory exists
    if not os.path.isdir(source_directory):
        raise OSError(f"The provided source directory {source_directory} does not exist.")

    # valid file extensions
    valid_ext = ['.txt', '.docx', '.xlsx', '.csv']

    # complete target directory path
    zip_target_path = os.path.join(target_directory, zip_name + '.zip')

    # To ensure we have absolute paths
    source_directory = os.path.abspath(source_directory)

    # create an zip object
    with zipfile.ZipFile(zip_target_path, 'w', zipfile.ZIP_DEFLATED) as zipf:        
        # walk through source directory
        for foldername, subfolders, filenames in os.walk(source_directory):
            for filename in filenames:
                # get file extension from each of the file
                ext = os.path.splitext(filename)[1]
                if ext in valid_ext:    # checking if file extensions is in valid_ext
                    file_path = os.path.join(foldername, filename)
                    # using relative path in zip
                    zipf.write(file_path, arcname=file_path.replace(source_directory, ''))       

    return zip_target_path


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
