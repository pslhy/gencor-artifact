from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Seed the random number generator
    random.seed(seed)
    try:
        # Get a list of files in the source directory
        files = os.listdir(src_dir)
        # Filter out directories
        files = [f for f in files if os.path.isfile(os.path.join(src_dir, f))]
        if not files:
            raise ValueError("No files in source directory")
        # Select a random file
        file_name = random.choice(files)
        # Construct absolute paths
        src_file_path = os.path.join(src_dir, file_name)
        dest_file_path = os.path.join(dest_dir, file_name)
        # Check that destination directory exists or create it
        if not os.path.exists(dest_dir):
            os.makedirs(dest_dir)
        # Move the file
        shutil.move(src_file_path, dest_file_path)
        return file_name
    except Exception as e:
        print(f"An error occurred: {str(e)}")


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
