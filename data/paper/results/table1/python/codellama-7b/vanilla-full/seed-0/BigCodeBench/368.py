from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:

    # seed the RNG with the given seed
    random.seed(seed)

    # get the list of files in the source directory
    file_list = os.listdir(src_dir)

    # shuffle the list of files with the RNG
    random.shuffle(file_list)

    # move the first file in the list to the destination directory
    filename = file_list[0]
    shutil.move(os.path.join(src_dir, filename), dest_dir)

    # return the name of the file moved
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
