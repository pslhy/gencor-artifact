from datetime import timedelta
import os
import glob
from pathlib import Path
import zipfile
def task_func(source_directory, target_directory, zip_name):
    # Check if source_directory exists
    if not os.path.exists(source_directory):
        raise OSError("Source directory does not exist")
    
    # Validate file extensions
    valid_extensions = ['.txt', '.docx', '.xlsx', '.csv']
    
    # Create a Path object for the target directory
    target_dir_path = Path(target_directory)
    
    # Create target directory if it does not exist
    target_dir_path.mkdir(parents=True, exist_ok=True)
    
    # Create the zip file path
    zip_path = target_dir_path / f"{zip_name}.zip"
    
    # Use with statement to ensure the zipfile is properly closed after operation
    with zipfile.ZipFile(zip_path, 'w') as zipf:
        # Walk through the source directory
        for root, dirs, files in os.walk(source_directory):
            for file in files:
                # Check if the file has a valid extension
                if any(file.endswith(ext) for ext in valid_extensions):
                    # Create the full file path
                    file_path = Path(root) / file
                    # Add file to the zip file
                    zipf.write(file_path, arcname=file)
    
    # Return the full path to the created zip file
    return str(zip_path)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Zip files with certain extensions from a source directory and save it as a zip file saved to a target directory.
#     Note that: The valid extensions are: ['.txt', '.docx', '.xlsx', '.csv'].
#     The function should raise the exception for: OSError: If the source_directory does not exist.
#     The function should output with:
#         str: The full path to the created zip file in the format "/path/to/target_directory/zip_name.zip".
#     You should write self-contained code starting with:
#     ```
#     import os
#     import glob
#     from pathlib import Path
#     import zipfile
#     def task_func(source_directory, target_directory, zip_name):
#     ```
