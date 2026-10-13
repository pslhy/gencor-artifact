from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    # Load data from input file
    with open(input_file, "r") as read_file:
        data = json.load(read_file)

    # Calculate mean and median for each key
    results = defaultdict(lambda: {"mean": 0, "median": 0})
    for dict_item in data:
        for key, value in dict_item.items():
            if isinstance(value, (int, float)):
                # Add value to mean
                results[key]["mean"] += value
                # Add value to median
                results[key]["median"] += value
                
    # Calculate the real mean and median
    for key, value in results.items():
        if value["mean"] != 0:
            results[key]["mean"] /= len(data)
        if value["median"] != 0:
            results[key]["median"] = np.median([v[key] for v in data])

    # Write results to output file in CSV format
    with open(output_file, "w", newline="") as write_file:
        writer = csv.DictWriter(write_file, fieldnames=["field", "mean", "median"])
        writer.writeheader()
        for key, value in results.items():
            writer.writerow({"field": key, "mean": value["mean"], "median": value["median"]})
            
    return results


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Read a list of dictionaries from a JSON file, calculate the mean and median for each key, and write the results to a CSV file.
#     The function should output with:
#         dict: A dictionary where each key is a field from the input JSON and each value is another dictionary with the mean and median of that field.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     from collections import defaultdict
#     import json
#     import csv
#     # Constants
#     def task_func(input_file, output_file):
#     ```
