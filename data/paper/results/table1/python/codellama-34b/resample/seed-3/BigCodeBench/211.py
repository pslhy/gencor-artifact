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
    # Create temporary file to store downloaded file and use it to write the file to the destination directory
    filepath = '/path/to/url_basename.zip'
    try:
        response = requests.get(url, headers=headers)
        response.raise_for_status()
        with open(filepath, 'wb') as f:
            f.write(response.content)
    except requests.exceptions.RequestException as err:
        raise Exception(f'Download error: {err}')

    # Extract files to destination directory
    try:
        with zipfile.ZipFile(filepath) as the_zip_file:
            the_zip_file.extractall(destination_directory)
        return [filepath]
    except zipfile.BadZipFile as err:
        raise Exception(f'Bad zip file: {err}')

