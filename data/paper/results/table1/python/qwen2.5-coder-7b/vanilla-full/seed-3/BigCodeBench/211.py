from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Download the zip file
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        raise Exception(f"Failed to download file: {response.status_code}")
    
    # Save the zip file temporarily
    zip_path = os.path.join(os.getcwd(), 'temp.zip')
    with open(zip_path, 'wb') as file:
        file.write(response.content)
    
    # Extract the contents to the specified directory
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    
    with zipfile.ZipFile(zip_path, 'r') as zip_ref:
        zip_ref.extractall(destination_directory)
    
    # List the extracted files
    extracted_files = os.listdir(destination_directory)
    
    # Clean up the temporary zip file
    os.remove(zip_path)
    
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
