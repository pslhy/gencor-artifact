from datetime import timedelta
import os
import shutil
import random
def task_func(src_dir: str, dest_dir: str, seed:int = 100) -> str:
    # Set the seed for the random function
    random.seed(seed)
    
    # Get a list of all the files in the source directory
    files = os.listdir(src_dir)
    
    # Randomly select a file from the list
    random_file = random.choice(files)
    
    # Get the full path of the random file
    random_file_path = os.path.join(src_dir, random_file)
    
    # Check if the path is a file
    if os.path.isfile(random_file_path):
        try:
            # If the destination directory does not exist, create it
            if not os.path.exists(dest_dir):
                os.makedirs(dest_dir)
            
            # Move the file to the destination directory
            shutil.move(random_file_path, dest_dir)
            
            # Return the name of the file moved
            return random_file
        except Exception as e:
            print(f"Error: {e}")
            return ''
    else:
        print(f"Error: {random_file_path} is not a file.")
        return ''


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
