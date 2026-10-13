from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Download the zip file
    response = requests.get(url, headers)
    
    # Create a zip file object from the response content
    zip_file = zipfile.ZipFile(io.BytesIO(response.content))
    
    # Extract the files from the zip file to the destination directory
    for file_info in zip_file.infolist():
        file_name = os.path.basename(file_info.filename)
        zip_file.extract(file_info, destination_directory)
    
    # Return a list of the extracted file names
    return [os.path.join(destination_directory, file_name) for file_name in os.listdir(destination_directory)]


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
