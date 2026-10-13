from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # create archive path in target directory
    archive_path = os.path.join(target_dir, archive_name)

    # create zip file with name in target directory
    with zipfile.ZipFile(archive_path, 'w') as zipf:
        # walk through source directory
        for root, dirs, files in os.walk(source_dir):
            for file in files:
                # check if the file is processed
                if file.endswith('_processed'):
                    # create path to file
                    file_path = os.path.join(root, file)
                    # create relative path inside zip file
                    relative_path = os.path.relpath(file_path, source_dir)
                    # add file to zip
                    zipf.write(file_path, relative_path)
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
