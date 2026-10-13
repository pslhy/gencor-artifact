import datetime

from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Create a regular expression to match files with '_processed' suffix
    processed_files = [f for f in os.listdir(source_dir) if re.search(r'_processed$', f)]
    
    # If no processed files, return the target directory path
    if not processed_files:
        return target_dir
    
    # Create a timestamp for the archive
    timestamp = (str(datetime.now())[:-10]).replace(':', '-')
    archive_path = os.path.join(target_dir, f'{archive_name}_{timestamp}.zip')
    
    # Create a zip file and add processed files to it
    with zipfile.ZipFile(archive_path, 'w') as zipf:
        for file in processed_files:
            file_path = os.path.join(source_dir, file)
            zipf.write(file_path, os.path.basename(file_path))
    
    # Move the processed files to a subdirectory named 'archived'
    archived_dir = os.path.join(source_dir, 'archived')
    if not os.path.exists(archived_dir):
        os.makedirs(archived_dir)
    for file in processed_files:
        shutil.move(os.path.join(source_dir, file), archived_dir)
    
    # Return the path to the created archive
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
