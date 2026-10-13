from datetime import timedelta
import warnings
import os
import glob
import shutil
import time
def task_func(SOURCE_DIR, DEST_DIR, EXTENSIONS):
    start_time = time.time()
    file_paths = [SOURCE_DIR]

    files_transferred = []
    warnings_list = []

    while file_paths:
        # pop the path from the list
        path = file_paths.pop(0)

        # if the path is a directory, add it to the list
        if os.path.isdir(path):
            file_paths += [os.path.join(path, x) for x in os.listdir(path)]

        else:
            # get the extension of the file
            _, file_extension = os.path.splitext(path)

            # if the file has one of the specified extensions, transfer it
            if file_extension in EXTENSIONS:
                try:
                    # construct the full path of the file to be transferred
                    file_name = os.path.basename(path)
                    new_file_path = os.path.join(DEST_DIR, file_name)

                    # transfer the file
                    shutil.move(path, new_file_path)

                    files_transferred.append(file_name)
                except Exception as e:
                    warnings_list.append(f"Could not transfer file {file_name}. Reason: {e}")
                
    end_time = time.time()
    exec_time = timedelta(seconds=end_time - start_time)

    print(f"Files transferred: {files_transferred}")
    for warning in warnings_list:
        warnings.warn(warning)
    
    print(f"Execution time: {exec_time}")

    return files_transferred


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
