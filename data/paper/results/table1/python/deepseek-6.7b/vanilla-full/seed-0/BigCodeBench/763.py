from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    # Read data from JSON file
    with open(input_file, "r") as read_file:
        data = json.load(read_file)

    # Initialize dictionary
    stats_dict = defaultdict(lambda: {"Mean": 0, "Median": 0})

    # Calculate mean and median for each field
    for key in data[0].keys():
        values = [d[key] for d in data if key in d]
        stats_dict[key]['Mean'] = np.mean(values)
        stats_dict[key]['Median'] = np.median(values)

    # Write results to a CSV file
    with open(output_file, "w") as write_file:
        writer = csv.writer(write_file)
        writer.writerow(['Field', 'Mean', 'Median'])
        for key, value in stats_dict.items():
            writer.writerow([key, value['Mean'], value['Median']])

    return stats_dict


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
