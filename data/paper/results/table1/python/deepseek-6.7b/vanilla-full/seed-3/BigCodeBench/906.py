from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # List of processed files.
    processed_files = os.listdir(source_dir)
    processed_files = [file for file in processed_files if re.search('_processed\.(.*)', file)]
    
    # Move processed files to target directory.
    for file in processed_files:
        old_path = os.path.join(source_dir, file)
        new_path = os.path.join(target_dir, file)
        shutil.move(old_path, new_path)

    # Create archive.
    zip_path = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(zip_path, 'w') as zipf:
        for file in processed_files:
            zipf.write(os.path.join(target_dir, file), arcname=file)
            
    # Return the path to the zip file.
    return zip_path


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
