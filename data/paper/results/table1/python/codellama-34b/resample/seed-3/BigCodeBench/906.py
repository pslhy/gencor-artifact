# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    files_to_process = []
    # 
    for file_name in os.listdir(source_dir):
        match = re.search(r'\w*_processed\.\w*$', file_name)
        if match:
            files_to_process.append(match.group(0))
    #
    print(files_to_process)
    print("=================") 
    exif_files = []
    for file_path in files_to_process:
        file_name = os.path.basename(file_path)
        file_dir = os.path.dirname(file_path)
        exif_file = os.path.join(file_dir, f"{file_name}.EXIF.json")
        exif_files.append(exif_file)
    # Create the archive
    archive_file = os.path.join(target_dir, archive_name)
    with zipfile.ZipFile(archive_file, 'a', zipfile.ZIP_DEFLATED) as archive:
        for file_path in files_to_process:
            file_name = os.path.basename(file_path)
            file_dir = os.path.dirname(file_path)
            file_content = open(file_path).read()
            info = zipfile.ZipInfo(file_name)
            info.comment = ''.join(map(str, range(1, 100)))
            archive.writestr(info, file_content.encode())
    # remove the processed files
    for file_path in files_to_process:
        os.remove(file_path)
    return archive_file 

