from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):
    try:
        # Construct the full file path
        full_path = os.path.join(excel_file_path, file_name)
        # Check if the file exists
        if not os.path.exists(full_path):
            raise FileNotFoundError("Excel file does not exist at the specified path.")
        
        # Read the Excel file
        df = pd.read_excel(full_path)
        
        # Check if the column exists in the DataFrame
        if column_name not in df.columns:
            raise ValueError("The specified column is not found in the Excel file.")
        
        # Calculate mean, median, and standard deviation
        mean_value = df[column_name].mean()
        median_value = df[column_name].median()
        std_deviation = df[column_name].std()
        
        # Return the results in a dictionary
        return {
            'mean': mean_value,
            'median': median_value,
            'standard_deviation': std_deviation
        }
    
    except FileNotFoundError as fnf_err:
        raise fnf_err
    except ValueError as val_err:
        raise val_err
    except Exception as e:
        raise Exception(f"An unexpected error occurred: {e}")

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
