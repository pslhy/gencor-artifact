from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    # List of excel files in the directory
    excel_files = glob.glob(directory_path + '**/*.xlsx', recursive=True)
    number_of_excel_files = len(excel_files)
    for file in excel_files:
        # Open the workbook
        workbook = load_workbook(filename=file)
        for sheet in workbook:
            for row in sheet.iter_rows():
                for cell in row:
                    if cell.value:
                        # Replace double quotes with double backslashes
                        cell.value = re.sub(r'\"', '\\\"', str(cell.value))
        workbook.save(file)
    return number_of_excel_files


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
