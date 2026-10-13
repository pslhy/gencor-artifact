from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):

    excel_files = glob.glob(os.path.join(directory_path, '*.xlsx'))
    if not excel_files:
        return 

    count = 0
    for file in excel_files:
        with open(file, 'r') as f:
            data = f.read()
        pattern = r"([\w.:/\\]+.xlsx)"
        result = re.findall(pattern, data)
        if result:
            count += 1
            prefix = '\\\\'
            try:
                with open(file, 'w') as f:
                    f.write(prefix+data)
            except:
                print(f'Error while writing to file {file}')
        else:
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
