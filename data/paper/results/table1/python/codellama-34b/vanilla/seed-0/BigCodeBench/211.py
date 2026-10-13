from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):

    if not url.lower().endswith('.zip'):
        raise ValueError('Invalid ZIP file URL: "{}"'.format(url))

    if destination_directory is None:
        raise ValueError('Missing destination_directory.')

    # Download the file from the URL and save it to the /tmp directory
    zip_filename = os.path.basename(url)
    zip_filepath = '/tmp/' + zip_filename
    response = requests.get(url, headers=headers)

    # Check if the download was successful
    if response.status_code != 200:
        raise Exception('Failed to download ZIP archive: HTTP status code = {}'.format(response.status_code))

    # Save the downloaded file to the /tmp directory
    with open(zip_filepath, 'w+b') as f:
        f.write(response.content)

    # Extract the contents of the ZIP file to the destination directory
    extracted_filenames = zipfile.extract(zip_filepath, destination_directory)

    return [os.path.join(destination_directory, f) for f in extracted_filenames]


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
