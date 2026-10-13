from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:

    # Find all processed files in source directory recursively
    processed = [re.search('\_processed', file) for file in source_dir]

    # Create target archive if it doesn't exist
    archive_path = os.path.join(target_dir, archive_name)
    if not os.path.exists(archive_path):
        os.makedirs(target_dir)
        shutil.createfile(archive_path)
    
    # Add all processed files to the archive
    with zipfile.ZipFile(archive_path, 'a') as archive:
        for filename in processed:
            source_file = os.path.join(source_dir, file)
            shutil.createname(filename)
            archive.write(source_file, os.path.basename(filename))
    
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
