from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    # Make a request to download the file from the specified URL
    response = requests.get(url, stream=True)

    # Make sure the destination directory exists
    if not os.path.exists(destination_directory):
        os.makedirs(destination_directory)

    # Set the file extension based on the URL
    file_extension = url.split(".")[-1]

    # Save the downloaded file to the destination directory
    with open(os.path.join(destination_directory, "download.{}".format(file_extension)), "wb") as f:
        for chunk in response.iter_content(chunk_size=1024):
            if chunk:
                f.write(chunk)

    # Remove the downloaded file to maintain a clean environment
    os.remove(os.path.join(destination_directory, "download.{}".format(file_extension)))

    # Extract the contents of the ZIP file to the destination directory
    with zipfile.ZipFile(os.path.join(destination_directory, "download.{}".format(file_extension)), "r") as zip_ref:
        zip_ref.extractall(destination_directory)

    # Return the list of extracted files
    return zip_ref.namelist()


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
