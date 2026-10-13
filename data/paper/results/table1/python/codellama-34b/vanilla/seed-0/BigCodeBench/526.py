from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):

    with open(input_file, 'r') as file:
        data = json.load(file)
    
    # Extract the values from list of dictionaries
    values = defaultdict(list)
    for d in data:
        for k, v in d.items():
            if not isinstance(v, str) and not np.isnan(v):
                values[k].append(v)
    
    # Filter out non-numeric and missing values
    num_values = 0
    for k in values.keys():
        num_values += 1
        values[k] = [v for v in values[k] if isinstance(v, float) and not np.isnan(v)]
    
    # Calculate mean and median
    means = dict()
    medians = dict()
    for k in values.keys():
        if len(values[k]) > 0:
            means[k] = np.mean(values[k])
            medians[k] = np.median(values[k])
        else:
            means[k] = np.nan
            medians[k] = np.nan
    
    # Flatten the means and medians to a list
    means_flat = []
    medians_flat = []
    for k in means.keys():
        means_flat.append(means[k])
        medians_flat.append(medians[k])
    
    df = pd.DataFrame({'mean': means_flat, 'median': medians_flat}, index=means.keys())
    df = df.sort_values(by=['mean'], ascending=False)
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
