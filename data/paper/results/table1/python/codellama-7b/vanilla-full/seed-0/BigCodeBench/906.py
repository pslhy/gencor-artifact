from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:

    # Create the archive
    archive_path = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(archive_path, 'w') as zip:
        for file in os.listdir(source_dir):
            file_path = os.path.join(source_dir, file)
            if not os.path.isfile(file_path):
                continue
            if re.search(r'_processed$', file):
                zip.write(file_path, os.path.basename(file_path))

    # Move the processed files to the archive directory
    processed_files = []
    for file in os.listdir(source_dir):
        file_path = os.path.join(source_dir, file)
        if not os.path.isfile(file_path):
            continue
        if re.search(r'_processed$', file):
            processed_files.append(file_path)
    shutil.move(processed_files, target_dir)

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
