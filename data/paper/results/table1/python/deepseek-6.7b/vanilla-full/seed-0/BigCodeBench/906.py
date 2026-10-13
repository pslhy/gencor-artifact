from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Get a list of all files in the source directory
    all_files = os.listdir(source_dir)

    # Get files that have '_processed' in their names
    processed_files = [file for file in all_files if '_processed' in file]

    # Create the archive directory if it doesn't exist
    if not os.path.exists(os.path.join(target_dir, 'archive')):
        os.mkdir(os.path.join(target_dir, 'archive'))

    # Create the path to the archive
    archive_path = os.path.join(target_dir, 'archive', archive_name)

    # Create the archive object
    with zipfile.ZipFile(archive_path, 'w', zipfile.ZIP_DEFLATED) as zip_archive:
        # Add processed files to the archive
        for file in processed_files:
            file_path = os.path.join(source_dir, file)
            zip_archive.write(file_path, arcname=file)

    # Move processed files to target directory
    for file in processed_files:
        shutil.move(os.path.join(source_dir, file), os.path.join(target_dir,file))

    # Return the path to the archive
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
