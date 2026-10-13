from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    with open(input_file, "r") as f:
        data = json.load(f)

    filtered_data = []
    for d in data:
        d = {k:v for k, v in d.items() if pd.is_numeric(v) or pd.isnull(v)} # Filter out non-numeric and missing data
        filtered_data.append(d)

    variables = list(filtered_data[0].keys()) # Get the variable names from the first row
    means = defaultdict(list)
    medians = defaultdict(list)

    for v in variables:
        values = [float(d[v]) for d in filtered_data if v in d and not pd.isnull(d[v])] # Filter out missing and non-numeric values
        mean = np.mean(values)
        median = np.median(values)
        means[v].append(mean)
        medians[v].append(median)

    return pd.DataFrame({"mean": list(means.values()), "median": list(medians.values())}, index=variables)


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
