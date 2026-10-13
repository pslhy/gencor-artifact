from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    # We use glob to get all the .xlsx files in the provided directory
    files = glob.glob(os.path.join(directory_path, '*.xlsx'))
    
    count = 0

    # Iterating over all files
    for file in files:
        excel_workbook = load_workbook(filename=file, read_only=False, keep_vba=True, data_only=False)

        # Iterating over all sheets in the workbook
        for sheet in excel_workbook.worksheets:

            # Iterating over all cells in the sheet
            for row in sheet:
                for cell in row:
                    if cell.data_type == 'n':
                        # If the cell contains a string, we use regex to add double backslashes before all double quotes
                        if re.search('\"', str(cell.value)):
                            cell.value = re.sub('\"', '\\"', str(cell.value))
                            # Saving the changes to the cell
                            cell.value = cell.value
                excel_workbook.save(file)
                
        count += 1
    return count


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
