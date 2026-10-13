from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    # Read data from json file
    with open(input_file) as f:
        data = json.load(f)

    # Create defaultdict to store mean and median
    results = defaultdict(dict)

    # Iterate over all dictionaries in the list
    for dic in data:
        # Iterate over all key-value pairs in the dictionary
        for key, val in dic.items():
            # Check the type of value and if it's not None
            if isinstance(val, (int, float)) and not pd.isnull(val):
                # Store the value in the results dict
                results[key]['values'].append(val)

    # Calculate mean and median for each key
    for key, res in results.items():
        res['mean'] = np.mean(res['values'])
        res['median'] = np.median(res['values'])

    # Convert results dict to DataFrame
    df = pd.DataFrame.from_dict(results, orient='index')

    # Sort by key (as the DataFrame's index)
    df.sort_index(inplace=True)

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
