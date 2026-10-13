from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Download the zip file
    response = requests.get(url, headers=headers)
    zip_file_path = os.path.join(destination_directory, "downloaded.zip")
    
    # Save the zip file to the destination directory
    with open(zip_file_path, 'wb') as file:
        file.write(response.content)
    
    # Extract the contents of the zip file
    extracted_files = []
    with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
        zip_ref.extractall(destination_directory)
        extracted_files = zip_ref.namelist()
    
    # Remove the zip file after extraction
    os.remove(zip_file_path)
    
    return extracted_files


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
