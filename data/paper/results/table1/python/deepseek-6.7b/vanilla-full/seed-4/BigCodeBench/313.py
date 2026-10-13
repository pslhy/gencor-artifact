from datetime import timedelta
import re
import os
import shutil
from datetime import datetime
def task_func(directory):
    # Create a dictionary to save the files moved to each subdirectory
    file_dict = {}
    
    # Iterate over each item in the directory
    for item in os.listdir(directory):
        item_path = os.path.join(directory, item)
        
        # Check if the item is a file
        if os.path.isfile(item_path):
            # Use regular expression to find the first text not enclosed in square brackets
            match = re.search(r'\[([^\]]+)\]', item)
            
            # If a match is found, move the file to a subdirectory named after this text
            if match:
                subdir_name = match.group(1)
                
                # Create the subdirectory if it doesn't exist
                subdir_path = os.path.join(directory, subdir_name)
                if not os.path.exists(subdir_path):
                    os.makedirs(subdir_path)
                
                # Move the file to the subdirectory
                shutil.move(item_path, subdir_path)
                
                # Add the file to the dictionary associating the subdirectory name with a list of moved files
                if subdir_name in file_dict:
                    file_dict[subdir_name].append(item)
                else:
                    file_dict[subdir_name] = [item]
    
    # Return the final directory path and the file dictionary
    return directory, file_dict


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Organize files in a directory based on the first text that is not enclosed in square brackets. Move the files to subdirectories named after this text. If no matching text is found, the file is not moved.
#     The function should output with:
#         tuple:
#         str: The directory path with organized files.
#         dict: A dictionary where keys are the created subdirectories and values are lists of files moved to them.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import shutil
#     from datetime import datetime
#     def task_func(directory):
#     ```
