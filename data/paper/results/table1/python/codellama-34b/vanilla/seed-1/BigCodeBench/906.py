from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Construct path to the archive file
    archive_filename = f"{source_dir}_{archive_name}"

    with zipfile.ZipFile(os.path.join(target_dir, archive_filename), 'w') as zf:
        # Loop over all files in the target directory
        for filename in sorted(os.listdir(target_dir)):
            file_path = os.path.join(target_dir, filename)
            if filename.endswith('_processed.pdf'):
                with open(file_path, "r") as f:
                    last_modified = f.last_modified
                # Check if the last modified date is after the last minute
                    if last_modified - timedelta(minutes=1) > date.now():
                        zf.write(file_path, filename)
        return archive_filename


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
