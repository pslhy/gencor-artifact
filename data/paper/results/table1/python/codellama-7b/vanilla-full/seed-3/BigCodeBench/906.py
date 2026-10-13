from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Create a list of processed files in the source directory
    processed_files = [f for f in os.listdir(source_dir) if re.search(r'_processed$', f)]
    # Create a list of target files for the archived files
    target_files = [os.path.join(target_dir, f) for f in processed_files]
    # Create an archive of the target files
    zip_path = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(zip_path, 'w') as zip_file:
        for file in target_files:
            zip_file.write(file)
    # Return the path to the created archive
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
