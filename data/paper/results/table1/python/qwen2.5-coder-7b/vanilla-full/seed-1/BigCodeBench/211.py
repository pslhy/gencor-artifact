from datetime import timedelta
import requests
import os
import zipfile
def task_func(url, destination_directory, headers=None):
    try:
        response = requests.get(url, headers=headers, timeout=timedelta(minutes=5).total_seconds())
        response.raise_for_status()

        if not os.path.exists(destination_directory):
            os.makedirs(destination_directory)

        zip_path = os.path.join(destination_directory, "temp.zip")
        with open(zip_path, 'wb') as f:
            f.write(response.content)

        extracted_files = []
        with zipfile.ZipFile(zip_path, 'r') as zip_ref:
            zip_ref.extractall(destination_directory)
            extracted_files = zip_ref.namelist()

        os.remove(zip_path)
        return extracted_files

    except requests.exceptions.RequestException as e:
        print(f"An error occurred while downloading the file: {e}")
        return []
    except zipfile.BadZipfile:
        print("The downloaded file is not a valid zip file.")
        return []
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        return []


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
