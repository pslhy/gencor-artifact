# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Construct headers if not provided
    if not headers:
        headers = {
           "Content-Type": "application/zip",
           "Accept-Encoding": "gzip, deflate"
        }
    
    # Download zip file
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        raise Exception("Download failed with status code %d" % response.status_code)

    # Extract downloaded file to destination directory
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    filenames = []
    with zipfile.ZipFile(io.BytesIO(response.content)) as zip_file:
        for filename in zip_file.namelist():
            # Ignore directories
            if not filename.endswith("/"):
                zip_file.extract(filename, destination_directory)
                filenames.append(filename)
    return filenames

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:22:26: undefined name 'io'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Construct headers if not provided
    if not headers:
        headers = {
            "Content-Type": "application/zip",
            "Accept-Encoding": "gzip, deflate"
        }
    # Download zip file
    response = requests.get(url, headers=headers)
    if response.status_code != 200:
        raise Exception("Download failed with status code %d" % response.status_code)
    # Extract downloaded file to destination directory
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)
    with zipfile.ZipFile(response.content) as zip_file:
        for filename in zip_file.namelist():
            # Ignore directories
            if not filename.endswith("/"):
                zip_file.extract(filename, destination_directory)
    return list(zip_file.namelist())

