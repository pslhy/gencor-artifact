from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    # Load the JSON data from the input file
    with open(input_file, "r") as f:
        data = json.load(f)
        
    # Create a dictionary to store the results
    results = defaultdict(lambda: defaultdict(list))

    # Iterate through the data and calculate the mean and median for each field
    for row in data:
        for key, value in row.items():
            results[key]["mean"].append(np.mean(value))
            results[key]["median"].append(np.median(value))

    # Write the results to a CSV file
    with open(output_file, "w") as f:
        writer = csv.writer(f)
        writer.writerow(["field", "mean", "median"])
        for key, sub_dict in results.items():
            writer.writerow([key, sub_dict["mean"], sub_dict["median"]])

    return results

# Test the function with a small sample dataset
input_file = "data.json"
output_file = "results.csv"
task_func(input_file, output_file)


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
