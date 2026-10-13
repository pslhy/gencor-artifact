from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    # Get all xlsx files in the directory
    xlsx_files = glob.glob(directory_path + '/*.xlsx')
    
    # counter
    num_files_processed = 0
    
    for file in xlsx_files:
        # load the workbook
        wb = load_workbook(filename = file, data_only = True)
        
        # for each sheet in the workbook
        for sheet in wb:
            
            # for each row in the sheet
            for row in sheet:
                
                # for each cell in the row
                for cell in row:
                    # if the cell has a string value
                    if cell.value and isinstance(cell.value, str):
                        # replace all double quotes with double backslashes
                        cell.value = re.sub(r'"', r'\\"', cell.value)
                        
        # save the workbook
        wb.save(file)
        
        # increment counter
        num_files_processed += 1
        
    return num_files_processed


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
