from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Download the zip file
    response = requests.get(url, headers=headers, allow_redirects=True, timeout=timedelta(seconds=5))
    if response.status_code == 200:
        # Save the file to a temporary location
        temp_file = os.path.join(os.path.dirname(__file__), 'temp.zip')
        with open(temp_file, 'wb') as f:
            f.write(response.content)
        # Extract the contents of the zip file to the destination directory
        with zipfile.ZipFile(temp_file, 'r') as zip_ref:
            zip_ref.extractall(destination_directory)
        # Return the list of extracted files
        return [os.path.join(destination_directory, file) for file in os.listdir(destination_directory)]
    else:
        return None


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
