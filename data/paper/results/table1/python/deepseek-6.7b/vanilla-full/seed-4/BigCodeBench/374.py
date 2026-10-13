from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    # Get a list of all .xlsx files in the directory
    files = glob.glob(os.path.join(directory_path, "*.xlsx"))
    processed_files_count = 0
    for file_path in files:
        # Load the workbook
        wb = load_workbook(file_path, data_only=True)
        for sheet in wb.worksheets:
            # Iterate over all cells in the sheet
            for row in sheet.iter_rows():
                for cell in row:
                    if cell.value and ":" in str(cell.value):
                        # Replace all double quotes with double backslashes
                        cell.value = str(cell.value).replace('"', '\\"')
        # Save the workbook
        wb.save(file_path)
        processed_files_count += 1
    return processed_files_count


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
