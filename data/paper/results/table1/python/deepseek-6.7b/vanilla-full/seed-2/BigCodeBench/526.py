from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    # Load data from input file
    with open(input_file, "r") as read_file:
        data = json.load(read_file)

    # Convert numeric strings to floats and convert missing values to NaNs
    for dict_ in data:
        for key, value in dict_.items():
            try:
                dict_[key] = float(value)
            except (ValueError, TypeError):
                dict_[key] = np.nan

    # Ignore NaNs during calculations
    df = pd.DataFrame(data).replace('NaN', np.nan)

    # Calculate mean and median series
    mean_series = df.mean(axis=0, skipna=True)
    median_series = df.median(axis=0, skipna=True)

    # Combine series into DataFrame and sort by variable name
    df = pd.concat([mean_series, median_series], axis=1, keys=['mean', 'median'])
    df = df.sort_index()

    return df


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
