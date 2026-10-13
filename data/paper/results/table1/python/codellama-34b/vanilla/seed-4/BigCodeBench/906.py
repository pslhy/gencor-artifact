from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Look for processed files and ignore archive with the same name
    process_list = [file for file in os.listdir(source_dir)
                       if file.endswith('_processed.zip') and not file == archive_name]
    print(process_list) 
    # Create archive with timestamp if no previous archive found
    if len(process_list) == 0:
        timestamp = timedelta.now().strftime("%Y-%m-%dT%H:%M:%S")
        archive_name += '_' + timestamp
    print({"process": archive_name})
    # append all processed files to the archive
    with zipfile.ZipFile(archive_name, 'a') as zip_file:
        for file in process_list:
            zip_file.write(os.path.join(source_dir, file), arcname=file)
    
    print(f"Created archive at {os.path.abspath(archive_name)}")
    return os.path.abspath(archive_name)


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
