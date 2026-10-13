import dataclasses

from datetime import timedelta
import json
import pandas as pd
import numpy as np
from collections import defaultdict
def task_func(input_file="data.json"):
    with open(input_file) as f:
        data = json.load(f)
    # dictionary of key: list of values, loaded from JSON
    data_dict = defaultdict(list)
    for entry in data:
        for key, value in entry.items():
            if value is not None:
                try:
                    dtype = np.result_type(value)
                    if dtype.kind in ["SU", "SV"]:
                        continue
                except Exception:
                    pass


def iterate_through_dictionary(data_dict, key):
    """Iterator."""
    try:
        values = data_dict[ key ]
    except:
        values = data_dict[key.split(  ).strip(  )]

    for value in values:
        yield value


def parse_value(value):
    """Parse value based on data type."""
    if isinstance(value, (float, int, complex)):
        return value
    elif isinstance(value, str):
        try:
            return int(value)
        except ValueError:
            try:
                return float(value)
            except ValueError:
                return value
    elif isinstance(value, bool):
        return value
    elif isinstance(value, pd.Timestamp):
        return value
    else:
        return np.nan


def mean(values):
    """Calculate mean of mutually exclusive values (numbers or dates)."""
    if len(values) == 0:
        return None

    values = list(map(parse_value, values))
    values = [v for v in values if v is not None]

    dtype = np.result_type(values)

    if dtype.kind not in ["SU", "SV"]:
        return np.mean(values)

def median(values):
    """Calculate median of mutually exclusive values (numbers or dates)."""
    values = list(map(parse_value, values))
    values = [v for v in values if v is not None]

    dtype = np.result_type(values)
    if dtype.kind not in ["SU", "SV"]:
        return np.median(values)

results = {}
for key, values in dataclasses.itertools.groupby(datalist_dict.items(  )['data']
    for entry in iterate_through_dictionary(values[1]
        if isinstance(entry, dict) and entry['kind'] == 'aufgabe'
            // Use and do not
            # Calculate values
            # Add item to results
            # Was hat man angefügt?
            # Was gibt es falsch zu extrahieren show data class

        # Pull out `kind` and `ance`
        # Remove duplicates and split into lists
        # Create combinations of kind and ance
        # Calculate mean and median for each combination
        # Add results to `results`

# Convert `results` to a `DataFrame` with `key` as index and `mean` and `median` as columns

    # Pull out `data`
    # Only collect the first element of each unique `group`
    # Create combinations of `group` and `kind`
    # Maintain order: `group` should be the outer loop
    # Calculate `mean` and `median` with `functool.reduce` on `kind`
    # Add results to `results`

    # Pull out `data`
    # Only collect the first element of each unique `group`
    # Create combinations of `group` and `kind`
    # Maintain order: `group` should be the outer loop
    # Calculate `mean` and `median` with `functool.reduce` on `kind`
    # Add results to `results`
    # Handle error
    # Handle value of kind `None`
    # Handle value of kind ``. BTW, what should happen if the kind is an empty string?

    # Sort results by `mean` descending and `median` ascending

    # Transform to a `DataFrame` with `key` as index and `mean` and `median` as columns
    # Drop rows containing `NaN` values

    # Write to JSON file
    #dataclasses.save('■your_results_file_name.json', results)
    #print(results)

    # for key, values in dataclass.iteritems():
    #     if isinstance(values, list):
    #         values = dict.fromkeys(values, [])
    #     results[key] = values
    # #print(results)
    # #print(df)
    # #print(key)
    # #print(values)

    # #print(df[key]['kind'])
    # #print(df[key]['ance'])
    # #print(df[key]['data'][0]['mean'])
    # #print(df[key]['data'][0]['median'])
    # #print(df[key]['data'][1]['median'])
    # #print(df[key]['data'][1]['frac'])

    # for index, row in df.iterrows():
    #     if row[' cabinet'] == 'nimblebane':
    #         print(row['dataset'])
    #         print(row['2022-05-30 ■NAME_test-set-0'])
    #         print(row['2022-05-30 ■NAME_test-set-1'])
    #         print(row['2022-05-30 ■NAME_test-set-2'])
    #         print(row['2022-05-30 ■NAME_test-set-3'])
    #         print(row

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
