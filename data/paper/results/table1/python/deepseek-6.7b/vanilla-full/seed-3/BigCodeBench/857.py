from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    start_time = time.time()
    
    os.chdir(SOURCE_DIR)  # Change to SOURCE_DIR
    source_files = glob.glob('*.{}'.format(EXTENSIONS)) # Get files with specified extensions

    if not os.path.exists(DEST_DIR):  # If DEST_DIR does not exist, create it
        os.makedirs(DEST_DIR)
    
    transferred_files = []
    untransferred_files = []

    for file_name in source_files:
        try:
            shutil.copy(file_name, DEST_DIR)  # Attempt to copy each file
            transferred_files.append(file_name)  # If successful, add to list
        except Exception as e:
            untransferred_files.append((file_name, str(e)))  # If not successful, add to untransferred files list

    print("--- %s seconds ---" % (time.time() - start_time))
    
    if untransferred_files:  # If any files were not transferred, print a warning
        warnings.warn("The following files were not transferred due to the following issues:")
        for file, error in untransferred_files:
            warnings.warn("File: {} Error: {}".format(file, error))

    return transferred_files

# To test the function
print(task_func('/source_dir', '/dest_dir', 'txt'))  # substitute with your own dirs and extension


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Transfer files from one directory (SOURCE_DIR) to another (DEST_DIR) based on the specified file extensions (EXTENSIONS). It also issues warnings for files that could not be transferred due to any issues.
#     The function should output with:
#         transferred_files (list): A list containing the names of files that were successfully transferred.
#     You should write self-contained code starting with:
#     ```
#     import warnings
#     import os
#     import glob
#     import shutil
#     import time
#     def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
#     ```
