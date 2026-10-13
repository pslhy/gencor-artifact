from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Create a regular expression for matching processed files
    processed_regex = re.compile(r'^.*_processed\..*$')
    # Create a list to store paths of processed files
    processed_paths = []
    # Iterate over all files in the source directory
    for root, dirs, files in os.walk(source_dir):
        for file in files:
            # Check if the file is processed
            if processed_regex.match(file):
                # Add the file path to the list of processed files
                processed_paths.append(os.path.join(root, file))
    # Create the archive file path
    archive_path = os.path.join(target_dir, archive_name)
    # Create the ZIP file
    with zipfile.ZipFile(archive_path, 'w') as zip_file:
        # Add the processed files to the ZIP file
        for file in processed_paths:
            zip_file.write(file, os.path.relpath(file, start=source_dir))
    return archive_path


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Archives all processed files from a source directory to a target directory. The function identifies processed files by the '_processed' suffix in the filename.
#     The function should output with:
#         str: The path to the created archive.
#     You should write self-contained code starting with:
#     ```
#     import zipfile
#     import os
#     import re
#     import shutil
#     def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
#     ```
