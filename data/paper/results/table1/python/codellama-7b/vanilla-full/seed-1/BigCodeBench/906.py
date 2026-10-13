from datetime import timedelta
import zipfile
import os
import re
import shutil
def task_func(source_dir: str, target_dir: str, archive_name: str = 'archive.zip') -> str:
    # Construct path to the archive file
    archive_path = os.path.join(target_dir, archive_name)

    # Create a ZipFile object
    with zipfile.ZipFile(archive_path, 'w', zipfile.ZIP_DEFLATED) as zipf:
        # Iterate over files in the source directory
        for root, _, files in os.walk(source_dir):
            for file in files:
                # Check if the file is processed
                if re.search(r'_processed$', file):
                    # Add the file to the archive
                    zipf.write(os.path.join(root, file))

    # Return the path to the archive file
    return archive_path

# Example usage
source_dir = 'example_dir'
target_dir = 'example_dir'
archive_name = 'archive.zip'
output = task_func(source_dir, target_dir, archive_name)
print(output)


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
