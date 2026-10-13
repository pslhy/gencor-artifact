from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    processed_count = 0
    for file_path in glob.glob(os.path.join(directory_path, '*.xlsx')):
        try:
            workbook = load_workbook(file_path)
            for sheet_name in workbook.sheetnames:
                sheet = workbook[sheet_name]
                for row in sheet.iter_rows(values_only=False):
                    for cell in row:
                        cell.value = re.sub(r'"""', r'\"\"', str(cell.value)) if cell.value and isinstance(cell.value, str) else cell.value
            workbook.save(file_path)
            processed_count += 1
        except Exception as e:
            print(f"Error processing file {file_path}: {e}")
    return processed_count


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
