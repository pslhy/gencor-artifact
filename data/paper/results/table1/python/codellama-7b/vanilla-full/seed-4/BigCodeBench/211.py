from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Download the zip file from the URL
    response = requests.get(url, headers=headers)
    response.raise_for_status()
    # Set up the temporary directory to extract the zip file
    tmp_dir = os.path.join(destination_directory, 'tmp')
    os.makedirs(tmp_dir, exist_ok=True)
    # Extract the zip file and get the list of extracted files
    with zipfile.ZipFile(io.BytesIO(response.content), 'r') as zip_file:
        zip_file.extractall(tmp_dir)
    extracted_files = [os.path.join(tmp_dir, file) for file in os.listdir(tmp_dir)
                        if file.endswith(('.txt', '.csv'))]
    # Remove the temporary directory
    shutil.rmtree(tmp_dir)
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
