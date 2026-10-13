from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Create the target directory if it doesn't exist
    os.makedirs(target_dir, exist_ok=True)

    # Create a zip file in the target directory
    archive_path = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(archive_path, 'w') as zipf:
        # Regular expression to identify processed files
        processed_file_regex = re.compile(r'.*_processed')

        # Walk through the source directory
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                if processed_file_regex.match(file):
                    # Create the arcname using os.path.join to preserve directory structure
                    arcname = os.path.relpath(os.path.join(root, file), start=source_dir)
                    # Add the file to the zip archive
                    zipf.write(os.path.join(root, file), arcname)

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
