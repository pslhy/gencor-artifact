from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    files_processed = 0
    # This function traverse all the doublquotes and prefixed it with double backslash
    def escape_doublequotes(file_path):
        with open(file_path, 'r') as f_in:
            contents = f_in.read()
            contents = re.sub(r'"', '\\"', contents)
        with open(file_path, 'w') as f_out:
            f_out.write(contents)

    # This function navigate all the Excel files in the given directory
    def traverse_excel_files(dir_path):
        pattern = r'^.*\.xlsx$'
        all_files = glob.iglob(dir_path + '**/*', recursive=True)
        for file_path in all_files:
            if(os.path.isfile(file_path) and re.match(pattern, file_path)):
                escape_doublequotes(file_path)
        return

    # Navigate through all the subdirectories recursively and call traverse_excel_files
    for root, dirs, files in os.walk(directory_path):
        traverse_excel_files(root)
        files_processed += 1

    return files_processed


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Protects all double quotes in all Excel (.xlsx) files in the specified directory by prefixing them with a double backslash.
#     The function should output with:
#         int: The number of Excel files processed.
#     You should write self-contained code starting with:
#     ```
#     import regex as re
#     import glob
#     import os
#     from openpyxl import load_workbook
#     def task_func(directory_path='./xlsx_files/'):
#     ```
