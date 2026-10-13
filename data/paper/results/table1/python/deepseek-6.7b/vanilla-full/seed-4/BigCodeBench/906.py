from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Create a list with the path of the processed files
    processed_files = [os.path.join(source_dir, filename) for filename in os.listdir(source_dir) if re.search('_processed', filename)]

    # Create an archive and check if it was successfully created
    full_archive_path = os.path.join(target_dir, archive_name)
    try:
        archive = zipfile.ZipFile(full_archive_path, 'w')
    except zipfile.error as e:
        print('Could not create archive: %s' % e)
        return None

    # Add processed files to the archive one by one
    for file in processed_files:
        archive.write(file)
    
    # Close the archive
    archive.close()

    # Return the path to the created archive
    return full_archive_path


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
