from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Check if source directory exists
    if not os.path.exists(source_dir):
        raise ValueError(f"Source directory '{source_dir}' does not exist.")
        
    # Check if target directory exists
    if not os.path.exists(target_dir):
        raise ValueError(f"Target directory '{target_dir}' does not exist.")
        
    # Create a ZipFile object
    zip = zipfile.ZipFile(target_dir + '/' + archive_name, 'w', zipfile.ZIP_DEFLATED)
    
    # Iterate over source directory
    for root, _, files in os.walk(source_dir):
        for file in files:
            # Check if file is processed
            if re.search('_processed$', file):
                # Add file to ZipFile object
                zip.write(os.path.join(root, file))
                
    # Close ZipFile object
    zip.close()
    
    # Return path to archive
    return os.path.abspath(target_dir + '/' + archive_name)


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
