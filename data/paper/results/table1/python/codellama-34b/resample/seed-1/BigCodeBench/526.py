# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Read a list of dictionaries from a JSON file, calculate the mean and median for each key (ignoring non-numeric or missing values), and convert the results into a Pandas DataFrame.
#     The function should output with:
#         df (pd.DataFrame): A DataFrame indexed and sorted by the variable names (keys) from the
#         input data, containing columns 'mean' and 'median'.
#     You should write self-contained code starting with:
#     ```
#     import json
#     import pandas as pd
#     import numpy as np
#     from collections import defaultdict
#     def task_func(input_file="data.json"):
#     ```
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    # Load JSON data from a file
    with open(input_file, "r") as file:
        data = json.load(file)
    
    # Initialize empty DataFrame to store the results
    result_df = pd.DataFrame(index=data.keys())
    
    # Iterate over each key (variable name) in the data and calculate mean and median
    for key, value in data.items():
        # Create a list of non-missing, numeric values for the current key
        numeric_values = [float(v) for v in value if v and v.isnumeric()]
        
        # Calculate the mean and median for the current key using the valuacks
        mean = np.mean(numeric_values) if numeric_values else np.nan
        median = np.median(numeric_values) if numeric_values else np.nan
        
        # Add the mean and median to the result DataFrame
        result_df[key] = [{"mean": mean, "median": median}]
    
    return result_df.sort_index()

