from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):
    # Check if Excel file exists
    if not os.path.exists(excel_file_path):
        raise FileNotFoundError(f"Excel file not found at path {excel_file_path}")

    # Load Excel file into a Pandas DataFrame
    df = pd.read_excel(excel_file_path,sheet_name=file_name)

    # Check if specified column exists in the Excel file
    if column_name not in df.columns:
        raise ValueError(f"Column {column_name} not found in Excel file")

    # Calculate mean, median, and standard deviation of specified column
    mean = df[column_name].mean()
    median = df[column_name].median()
    stddev = df[column_name].std()

    # Calculate time difference between start and end date in hours
    df["TimeDiff"] = df["EndDate"] - df["StartDate"]
    df["TimeDiff"] = df["TimeDiff"].dt.total_seconds() / 3600
    hours = df["TimeDiff"].mean()

    # Create a dictionary with the mean, median, and standard deviation
    data_dict = {
        "Mean": mean,
        "Median": median,
        "Standard Deviation": stddev,
        "Time Difference (hours)": hours,
    }

    # Return the dictionary
    return data_dict


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
