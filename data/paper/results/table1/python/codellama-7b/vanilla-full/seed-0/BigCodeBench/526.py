from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):

    # Read the JSON input file
    with open(input_file, "r") as f:
        data = json.load(f)

    # Create a dictionary to store the mean and median values for each key
    means_and_medians = defaultdict(list)

    # Loop through each dictionary in the data
    for d in data:

        # Loop through each key in each dictionary
        for key, value in d.items():

            # If the value is a number, calculate the mean and median and store them in the means_and_medians dictionary
            if isinstance(value, (int, float)):
                value = float(value)
                means_and_medians["mean"].append(np.mean(value))
                means_and_medians["median"].append(np.median(value))

    # Convert the means_and_medians dictionary into a DataFrame and sort by the variable names (keys)
    df = pd.DataFrame.from_dict(means_and_medians, orient="index").sort_index()

    # Specify the data types for the 'mean' and 'median' columns
    df["mean"] = df["mean"].astype(float)
    df["median"] = df["median"].astype(float)

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
