from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):

    # Download the zip file from the URL
    response = requests.get(url, headers=headers, stream=True)
    response.raise_for_status()

    # Set up the filepath for the local zip file
    local_filepath = os.path.join(destination_directory, 'temp.zip')

    # Write the contents of the response to the local file
    with open(local_filepath, 'wb') as file:
        for chunk in response.iter_content(1024):
            file.write(chunk)

    # Extract the contents of the zip file to the destination directory
    with zipfile.ZipFile(local_filepath, 'r') as zip_ref:
        zip_ref.extractall(destination_directory)

    # Remove the temporary zip file
    os.remove(local_filepath)

    # Get the list of extracted files
    extracted_files = os.listdir(destination_directory)

    # Return the list of extracted files
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
