from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
  glob_path = os.path.join(directory_path, '*.xlsx')
  num_files = 0
  for filename in glob.iglob(glob_path):
    num_files += 1
    workbook = load_workbook(filename)
    for sheet in workbook.worksheets:
      for row in sheet.iter_rows(2, sheet.max_row):
        for cell in row:
          if cell.value is None:continue
          value = cell.value.replace('"', '""')
          cell.value = value
    workbook.save(filename)
  return num_files


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
