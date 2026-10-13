from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
  # Download the zip file from the URL with optional headers
    response = requests.get(url, headers=headers)
    # Check if the response is okay
    if response.status_code != 200:
      raise requests.exceptions.HTTPError(response.status_code)
    # Create the destination directory if it doesn't exist
    if not(os.path.exists(destination_directory)):
        os.makedirs(destination_directory)
    # Then, extract the zip file to the destination directory
    return zipfile.extractall(destination_directory, response.content)


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
