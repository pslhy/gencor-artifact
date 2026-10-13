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
    # Read the input data
    with open(input_file, "r") as f:
        data = json.load(f)

    # Calculate the mean and median for each key
    means = defaultdict(list)
    medians = defaultdict(list)
    for d in data:
        for k, v in d.items():
            if isinstance(v, numbers.Number):  # Ignore non-numeric values
                means[k].append(v)
                medians[k].append(v)

    # Convert the results into a DataFrame
    df = pd.DataFrame.from_records(
        [{"mean": np.mean(means[k]), "median": np.median(medians[k])} for k in means],
        index=means.keys(),
        columns=["mean", "median"]
    )

    # Return the DataFrame
    return df

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:16:30: undefined name 'numbers'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    # Read the input data
    with open(input_file, "r") as f:
        data = json.load(f)

    # Calculate the mean and median for each key
    means = defaultdict(list)
    medians = defaultdict(list)
    for d in data:
        for k, v in d.items():
            if isinstance(v, float):  # Ignore non-numeric values
                means[k].append(v)
                medians[k].append(v)
    # Convert the results into a DataFrame
    df = pd.DataFrame.from_records(
        [{"mean": np.mean(means[k]), "median": np.median(medians[k])} for k in means],
        index=means.keys(),
        columns=["mean", "median"]
    )
    # Return the DataFrame
    return df

