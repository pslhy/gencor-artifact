from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    file_count = 0
    for file_path in glob.glob(os.path.join(directory_path, '*.xlsx')):
        try:
            wb = load_workbook(file_path)
            for sheet_name in wb.sheetnames:
                ws = wb[sheet_name]
                for row in ws.iter_rows(values_only=True):
                    for cell_value in row:
                        if isinstance(cell_value, str):
                            cell_value = re.sub(r'\"', r'\\\"', cell_value)
                            ws[cell_value].value = cell_value
            wb.save(file_path)
            file_count += 1
        except Exception as e:
            print(f"Error processing {file_path}: {e}")
    return file_count


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
