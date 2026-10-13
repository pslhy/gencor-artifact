from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    directory_path += '/*.xlsx'
    excel_files = glob.glob(directory_path)
    total_files = len(excel_files)
    cnt = 0
    for file in excel_files:
        wb = load_workbook(filename=file, read_only=False, keep_vba=True)

        for sheet in wb.worksheets:
            for row in sheet.iter_rows():
                for cell in row:
                    if cell.value is not None:
                        if isinstance(cell.value, str):
                            if '"' in cell.value:
                                cell.value = re.sub('"','\\"', cell.value)
                                cnt += 1
        wb.save(file)
    return cnt


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
