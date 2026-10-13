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

    values = remove_none_values(values)
    for i in range(len(values)):
        values[i] = parse_value(values[i])

    nonempty_values = [value for value in values if value is not np.nan]
    if len(nonempty_values) == 0:
        return None

    mean_values = np.mean(np.array(nonempty_values), axis=0)
    return mean_values


def median(values):
    """Calculate median of mutually exclusive values (numbers or dates)."""
    if len(values) == 0:
        return None

    values = remove_none_values(values)
    for i in range(len(values)):
        values[i] = parse_value(values[i])

    nonempty_values = [value for value in values if value is not np.nan]
    if len(nonempty_values) == 0:
        return None

    median_values = np.median(np.array(nonempty_values), axis=0)
    return median_values
\end{code}


# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:85:2: unexpected character after line continuation character
#     Please regenerate the code, taking these errors into account.
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
        data_dict[key].append(value)
    # Convert the dictionary to a pandas DataFrame
    df = pd.DataFrame(data_dict)
    # Calculate the mean and median for each key
    mean_dict = {key: np.mean(df[key].values) for key in df.keys()}
    median_dict = {key: np.median(df[key].values) for key in df.keys()}
    # Convert the dictionaries to DataFrames and concatenate them
    mean_df = pd.DataFrame(mean_dict)
    median_df = pd.DataFrame(median_dict)
    result_df = pd.concat([mean_df, median_df], axis=1)
    return result_df

