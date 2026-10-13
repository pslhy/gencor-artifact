from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    processed_files = [file for file in os.listdir(source_dir) if file.endswith('_processed')]
    for file in processed_files:
        shutil.move(os.path.join(source_dir, file), target_dir)

    archive_path = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(archive_path, 'w') as zipf:
        for root, dirs, files in os.walk(target_dir):
            for file in files:
                if not file.endswith('_processed'):
                    zipf.write(os.path.join(root, file), arcname=file)
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
