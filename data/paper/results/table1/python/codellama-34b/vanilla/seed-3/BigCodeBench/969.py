from datetime import timedelta
import numpy as np
from sklearn.preprocessing import MinMaxScaler
import pandas as pd
def task_func(df: pd.DataFrame) -> pd.DataFrame:
    # Check that the DataFrame contains only numeric data
    if not np.issubdtype(df.dtypes, np.number):
        raise TypeError("DataFrame contains non-numeric data types")
    # Check that the DataFrame is not empty
    if df.empty:
        raise ValueError("DataFrame is empty")
    # Check that the DataFrame does not contain any NaN values
    if df.isnull().values.any():
        raise ValueError("DataFrame contains NaN values")
    # Create a MinMaxScaler
    scaler = MinMaxScaler()
    # Fit and scale the data
    scaled_data = scaler.fit_transform(df)
    # Calculate the cumulative sum for each column
    cumsum_data = scaled_data.cumsum(axis=0)
    # Calculate the min and max values for each column
    min_values = scaled_data.min(axis=0)
    max_values = scaled_data.max(axis=0)
    # Calculate the normalized cumulative sum for each column
    normalized_cumsum = (cumsum_data - min_values) / (max_values - min_values)
    # Create a new DataFrame with the normalized cumulative sum data
    normalized_cumsum_df = pd.DataFrame(normalized_cumsum, columns=df.columns)
    # Return the normalized cumulative sum DataFrame
    return normalized_cumsum_df


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
