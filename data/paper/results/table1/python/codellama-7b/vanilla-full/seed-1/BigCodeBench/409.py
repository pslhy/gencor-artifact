from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):
    # Check if Excel file exists
    if not os.path.exists(excel_file_path):
        raise FileNotFoundError(f"Excel file '{file_name}' not found at '{excel_file_path}'")
    
    # Read Excel file into pandas dataframe
    df = pd.read_excel(excel_file_path)

    # Check if specified column exists in Excel file
    if column_name not in df.columns:
        raise ValueError(f"Column '{column_name}' not found in Excel file '{file_name}'")
    
    # Calculate mean, median, and standard deviation of specified column
    mean = df[column_name].mean()
    median = df[column_name].median()
    std = df[column_name].std()

    # Return dictionary with mean, median, and standard deviation
    return {"mean": mean, "median": median, "std": std}

# Test code
excel_file_path = "example.xlsx"
file_name = "example.xlsx"
column_name = "column_1"
result = task_func(excel_file_path, file_name, column_name)
print(result)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Calculate the mean, median, and standard deviation of the data from a specific column in an Excel file.
#     The function should raise the exception for: FileNotFoundError: If the Excel file does not exist at the specified path. ValueError: If the specified column is not found in the Excel file.
#     The function should output with:
#         dict: A dictionary with the mean, median, and standard deviation.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import pandas as pd
#     import numpy as np
#     def task_func(excel_file_path, file_name, column_name):
#     ```
