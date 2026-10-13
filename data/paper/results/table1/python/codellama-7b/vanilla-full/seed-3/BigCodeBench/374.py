from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    files_processed = 0
    # Loop through all Excel files in the specified directory
    for file in glob.glob(os.path.join(directory_path, '*.xlsx')):
        # Load workbook and iterate over all worksheets
        wb = load_workbook(file)
        for sheet in wb:
            # Get the worksheet's content as an array of cells
            rows = sheet.values
            # Iterate over all cells in the worksheet
            for row in rows:
                # Find all cells that have double quotes
                cells_with_doubles = re.findall(r'"', row)
                # Iterate over all found cells and replace double quotes with double backslashes
                for cell in cells_with_doubles:
                    # Get the index of the cell
                    cell_index = row.index(cell)
                    # Replace the cell's content with the double backslashed content
                    row[cell_index] = '\\' + cell
            # Save the worksheet back to the workbook
            sheet.save(wb)
        # Close the workbook
        wb.close()
        files_processed += 1
    # Return the number of Excel files processed
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
