# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    # Read list of dictionaries from JSON file
    with open(input_file, 'r') as f:
        data = json.load(f)
    # Initialize data structures
    fields = set()
    data_dict = defaultdict(list)
    for d in data:
        for key, value in d.items():
            fields.add(key)
            data_dict[key].append(value)
    # Calculate mean and median for each key
    results = {}
    for field in fields:
        field_data = np.array(data_dict[field])
        results[field] = {}
        results[field]['mean'] = np.mean(field_data)
        results[field]['median'] = np.median(field_data)
    # Write results to CSV file
    with open(output_file, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(['field'] + list(results))
        for field in sorted(fields):
            writer.writerow([field] + [results[field]['mean'], results[field]['median']])
    return results

