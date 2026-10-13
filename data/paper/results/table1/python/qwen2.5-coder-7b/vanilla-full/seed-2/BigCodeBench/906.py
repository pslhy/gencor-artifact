from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Define the regex pattern to match processed files
    processed_file_pattern = re.compile(r'.*_processed\.')

    # Create the target directory if it doesn't exist
    os.makedirs(target_dir, exist_ok=True)

    # Create the archive path
    archive_path = os.path.join(target_dir, archive_name)

    # Create a zip file
    with zipfile.ZipFile(archive_path, 'w') as zipf:
        # Walk through the source directory
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                # Check if the file is processed
                if processed_file_pattern.search(file):
                    # Create the absolute path to the file
                    file_path = os.path.join(root, file)
                    # Add the file to the zip archive
                    zipf.write(file_path, os.path.relpath(file_path, start=source_dir))

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
