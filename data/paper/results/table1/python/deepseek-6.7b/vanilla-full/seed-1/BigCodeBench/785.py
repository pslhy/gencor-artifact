from datetime import timedelta
import subprocess
import os
import glob
# Constants
ARCHIVE_DIR = '/tmp/archive'
def task_func(pattern):
    # Create archive directory if it does not exist
    if not os.path.exists(ARCHIVE_DIR):
        os.makedirs(ARCHIVE_DIR)

    # Get all files with the given pattern
    files = glob.glob(pattern)

    # If no files match the pattern, print a message and return
    if not files:
        print("No files found matching the pattern")
        return

    # Loop through all the files
    for file in files:
        # Get the base file name and the extension
        base_name, extension = os.path.splitext(file)

        # Create an archive name using the base file name and the date
        archive_name = f"{base_name}_{os.path.basename(ARCHIVE_DIR)}{extension}"

        # Move the file to the archive directory
        subprocess.run(["mv", file, os.path.join(ARCHIVE_DIR, archive_name)])

    # Print the archive file path
    print(f"Archive file path: {ARCHIVE_DIR}/{archive_name}")

# Call the function with a pattern
# task_func("/tmp/*.txt")  # Replace this pattern with the pattern you want to use


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Archive all files that match a particular pattern and then delete the original files.
#     Note that: This function will return the archive file path.
#     The function should output with:
#         archive_file (str): The archive file path.
#     You should write self-contained code starting with:
#     ```
#     import subprocess
#     import os
#     import glob
#     # Constants
#     ARCHIVE_DIR = '/tmp/archive'
#     def task_func(pattern):
#     ```
