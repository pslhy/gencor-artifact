from datetime import timedelta
import re
import os
import zipfile
def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
    """
    Unzip all zip files in a directory whose name matches a certain pattern by splitting the filename
    the last time "-" occurs and using the prefix part of the filename as the directory to extract.
    Parameters
    ----------
    directory : str
        The directory containing the zip files
    Returns
    -------
    list
        A list of directories where the files were extracted.
    """
    extracted_dirs = []
    for filename in os.listdir(directory):
        match = re.match(pattern, filename)
        if match:
            prefix = match.group(1)
            zip_filepath = os.path.join(directory, filename)
            output_dir = prefix
            try:
                with zipfile.ZipFile(zip_filepath, 'r') as zip_ref:
                    zip_ref.extractall(output_dir)
                extracted_dirs.append(output_dir)
            except Exception as e:
                print(f"Error occurred during extraction: {e}")
    return extracted_dirs


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Unzip all zip files in a directory whose name matches a certain pattern by splitting the filename the last time "-" occurs and using the prefix part of the filename as the directory to extract.
#     The function should output with:
#         list: A list of directories where the files were extracted.
#     You should write self-contained code starting with:
#     ```
#     import re
#     import os
#     import zipfile
#     def task_func(directory, pattern=r'^(.*?)-\d+\.zip$'):
#     ```
