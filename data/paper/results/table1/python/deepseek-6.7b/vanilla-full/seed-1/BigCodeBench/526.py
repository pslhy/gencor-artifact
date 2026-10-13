from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    def convert(data):
        if isinstance(data, str):
            try:
                return timedelta(seconds=float(data))
            except:
                return data
        elif isinstance(data, dict):
            return {convert(key): convert(value) for key, value in data.items()}
        elif isinstance(data, list):
            return [convert(element) for element in data]
        else:
            try:
                return float(data)
            except:
                return data
    # Load JSON data
    with open(input_file, 'r') as f:
        data = json.load(f, object_hook=convert)

    # Create a DataFrame from the JSON data
    df = pd.DataFrame.from_dict({(i, j): data[i][j]
                                 for i in range(len(data))
                                 for j in range(len(data[i]))},
                                orient='index')

    # Calculate mean and median per key
    means = df.groupby(level=1).mean()
    medians = df.groupby(level=1).median()

    # Merge results into a single DataFrame
    result = pd.concat([means, medians], axis=1)
    result.columns = ['mean', 'median']

    # Sort and reset the index
    result = result.sort_index().reset_index()
    
    return result


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
