from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Initialize random seed to ensure reproducibility
    random.seed(seed)
    
    # List all files in the source directory
    files = [f for f in os.listdir(src_dir) if os.path.isfile(os.path.join(src_dir, f))]
    
    # Select a random file
    if files:
        file_to_move = random.choice(files)
        src_file_path = os.path.join(src_dir, file_to_move)
        dest_file_path = os.path.join(dest_dir, file_to_move)
        
        # Move the file
        shutil.move(src_file_path, dest_file_path)
        
        return file_to_move
    else:
        raise ValueError("No files found in the source directory.")


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
