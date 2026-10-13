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
    response = requests.get(url, headers=headers)
    # Ensure that we get a proper response
    if response.status_code == 200:
        # This will save the file into memory in bytes
        zip_file = zipfile.ZipFile(io.BytesIO(response.content))
        zip_file.extractall(destination_directory)
        zip_file.close()
    else:
        print(f"Failed to download zip file: {url}")
    return [file for file in os.listdir(destination_directory) if os.path.isfile(os.path.join(destination_directory, file))]

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:36: undefined name 'io'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    response = requests.get(url, headers=headers)
    # Ensure that we get a proper response
    if response.status_code == 200:
        # This will save the file into memory in bytes
        zip_file = zipfile.ZipFile(io.BytesIO(response.content))
        zip_file.extractall(destination_directory)
        zip_file.close()
    else:
        print(f"Failed to download zip file: {url}")
    return [file for file in os.listdir(destination_directory) if os.path.isfile(os.path.join(destination_directory, file))]

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:36: undefined name 'io'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    response = requests.get(url, headers=headers)
    # Ensure that we get a proper response
    if response.status_code == 200:
        # This will save the file into memory in bytes
        zip_file = zipfile.ZipFile(io.BytesIO(response.content))
        zip_file.extractall(destination_directory)
        zip_file.close()
    else:
        print(f"Failed to download zip file: {url}")
    return [file for file in os.listdir(destination_directory) if os.path.isfile(os.path.join(destination_directory, file))]

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:36: undefined name 'io'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    response = requests.get(url, headers=headers)
    # Ensure that we get a proper response
    if response.status_code == 200:
        # This will save the file into memory in bytes
        zip_file = zipfile.ZipFile(io.BytesIO(response.content))
        zip_file.extractall(destination_directory)
        zip_file.close()
    else:
        print(f"Failed to download zip file: {url}")
    return [file for file in os.listdir(destination_directory) if os.path.isfile(os.path.join(destination_directory, file))]

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:36: undefined name 'io'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    response = requests.get(url, headers=headers)
    # Ensure that we get a proper response
    if response.status_code == 200:
        # This will save the file into memory in bytes
        with open('temp_file.zip', 'wb') as f:
            f.write(response.content)
        with zipfile.ZipFile('temp_file.zip', 'r') as zip_ref:
            zip_ref.extractall(destination_directory)
    else:
        print(f"Failed to download zip file: {url}")
        os.remove('temp_file.zip')
    file_list = [f for f in os.listdir(destination_directory) if os.path.isfile(os.path.join(destination_directory, f))]
    os.remove('temp_file.zip')
    return file_list

