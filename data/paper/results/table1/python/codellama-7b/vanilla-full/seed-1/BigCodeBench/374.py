from datetime import timedelta
import regex as re
import glob
import os
from openpyxl import load_workbook
def task_func(directory_path='./xlsx_files/'):
    # Initialize variables
    excel_files = []
    processed_files = 0

    # Iterate over Excel files in the specified directory
    for file_name in glob.glob(f"{directory_path}**.xlsx", recursive=True):
        try:
            # Load Excel file
            wb = load_workbook(file_name)

            # Iterate over worksheets in the Excel file
            for ws in wb:
                # Iterate over cells in the worksheet
                for row in ws.iter_rows(values_only=True):
                    # Find all double quotes in the cell value
                    quotes = re.findall(r'"(?![^"]*"")', row)

                    # Replace all found double quotes with escaped double backslashes
                    row = re.sub(r'"', '\\"', row)

                    # Save the modified value to the cell
                    ws[row] = row

            # Save the modified Excel file
            wb.save(file_name)

            # Increment the number of processed files
            processed_files += 1
        except Exception as e:
            # Print error message if an error occurs
            print(f"Error opening '{file_name}': {e}")

    # Print the number of processed files
    print(f"Processed {processed_files} Excel files.")
    return processed_files


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
