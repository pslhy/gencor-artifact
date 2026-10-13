from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Make the request
    response = requests.get(url, headers=headers, stream=True)
    
    # Store the zip file in a temporary directory
    temp_zip_file = "temp.zip"
    open(temp_zip_file, 'wb').write(response.content)

    # Extract all the files in the zip archive
    with zipfile.ZipFile(temp_zip_file, 'r') as zip_ref:
        zip_ref.extractall(destination_directory)

    # Remove the temporary zip file
    os.remove(temp_zip_file)
    
    # Return the list of files in the destination directory
    return os.listdir(destination_directory)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Download and keep a zip file from a URL, extract its contents to the specified directory, and return the list of extracted files.
#     The function should output with:
#         list: A list of filenames of the extracted files.
#     You should write self-contained code starting with:
#     ```
#     import requests
#     import os
#     import zipfile
#     def task_func(url, destination_directory, headers=None):
#     ```
