from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    # Load the JSON data into a list of dictionaries
    with open(input_file, "r") as f:
        data = json.load(f)

    # Create a defaultdict to hold the data for each key
    means = defaultdict(list)
    medians = defaultdict(list)

    # Iterate through the data and calculate the mean and median for each key
    for row in data:
        for key, value in row.items():
            try:
                means[key].append(np.nanmean(value))
                medians[key].append(np.nanmedian(value))
            except (TypeError, ValueError):
                # Ignore non-numeric or missing values
                pass

    # Convert the dicts to DataFrames and join them
    means_df = pd.DataFrame.from_dict(means, orient="index")
    medians_df = pd.DataFrame.from_dict(medians, orient="index")
    df = pd.concat([means_df, medians_df], axis=1)

    # Set the column names and sort the DataFrame
    df.columns = ["mean", "median"]
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
