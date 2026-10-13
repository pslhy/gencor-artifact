from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    # Get a list of all files in the directory
    files = os.listdir(directory)
    
    # Filter the list to only include zip files that match the pattern
    zip_files = [f for f in files if re.match(pattern, f)]
    
    # Initialize an empty list to store the directories where files were extracted
    extracted_directories = []
    
    # For each zip file, extract it to a directory whose name comes from splitting the filename at the last "-" and using the prefix part of the filename as the directory name
    for zip_file in zip_files:
        # Split the filename at the last "-"
        split_name = re.split(r'-\d+\.zip$', zip_file)
        
        # If there is only one part after the split, move to the next zip file
        if len(split_name) != 2:
            continue
        
        # Get the prefix part of the filename
        prefix = split_name[0]
        
        # If the prefix is already in the list of extracted directories, move to the next zip file
        if prefix in extracted_directories:
            continue
        
        # If the directory for this prefix does not exist, create it
        if not os.path.exists(prefix):
            os.makedirs(prefix)
        
        # Add the prefix to the list of extracted directories
        extracted_directories.append(prefix)
        
        # Extract the zip file to the directory with the prefix name
        with zipfile.ZipFile(os.path.join(directory, zip_file), 'r') as zip_ref:
            zip_ref.extractall(prefix)

    # Return the list of directories where files were extracted
    return extracted_directories


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Unzip all zip files in a directory whose name matches a certain pattern by splitting the filename the last time "-" occurs and using the prefix part of the filename as the directory to extract.
#     The function should output with:
#         list: A list of directories where the files were extracted.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import zipfile
#     def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
#     ```
