from datetime import timedelta
import numpy as np
from sklearn.preprocessing import MinMaxScaler
import pandas as pd
def task_func(df: pd.DataFrame) -> pd.DataFrame:
    # Check if DataFrame is empty
    if df.empty:
        raise ValueError("DataFrame is empty")
    
    # Check for NaN values
    if df.isnull().values.any():
        raise ValueError("DataFrame contains NaN values")
    
    # Initialize the MinMaxScaler
    scaler = MinMaxScaler()
    
    # Initialize an empty DataFrame to store the results
    result_df = pd.DataFrame(index=df.index, columns=df.columns)
    
    # Iterate over each column in the DataFrame
    for column in df.columns:
        # Check if the column contains only numeric data
        if not np.issubdtype(df[column].dtype, np.number):
            raise TypeError("Column contains non-numeric data types")
        
        # Compute the cumulative sum of the column
        cumsum_column = df[column].cumsum()
        
        # Reshape the cumulative sum column to a 2D array for scaling
        cumsum_column_reshaped = cumsum_column.values.reshape(-1, 1)
        
        # Fit and transform the cumulative sum column using MinMaxScaler
        scaled_column = scaler.fit_transform(cumsum_column_reshaped)
        
        # Assign the scaled column back to the result DataFrame
        result_df[column] = scaled_column.flatten()
    
    # Return the result DataFrame
    return result_df


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Computes the MinMax-normalized cumulative sum for each numeric column in the given DataFrame.
#     The function should raise the exception for: TypeError: If the DataFrame contains non-numeric data types. ValueError: If the DataFrame is empty or contains NaN values.
#     The function should output with:
#         pd.DataFrame: A DataFrame where each column contains the normalized cumulative sum of the
#         respective column in the input DataFrame, retaining the original column names.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     from sklearn.preprocessing import MinMaxScaler
#     import pandas as pd
#     def task_func(df: pd.DataFrame) -> pd.DataFrame:
#     ```
