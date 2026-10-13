from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Create a list of all files in the source directory
    file_list = [f for f in os.listdir(src_dir) if os.path.isfile(os.path.join(src_dir, f))]
    # Shuffle the list of files using the provided seed
    random.Random(seed).shuffle(file_list)
    # Move the first file from the source directory to the destination directory
    filename = file_list[0]
    source_path = os.path.join(src_dir, filename)
    destination_path = os.path.join(dest_dir, filename)
    shutil.move(source_path, destination_path)
    return filename


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Moves a random file from the source directory to the specified destination directory.
#     The function should output with:
#         str: The name of the file moved. Format: 'filename.extension' (e.g., 'file1.txt').
#     You should write self-contained code starting with:
#     ```
#     import os
#     import shutil
#     import random
#     def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
#     ```
