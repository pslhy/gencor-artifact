from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):

    # Read the JSON input file
    with open(input_file, "r") as f:
        data = json.load(f)

    # Create a dictionary to store the means and medians for each field
    results = defaultdict(dict)

    # Loop through each row in the JSON data
    for row in data:
        # Loop through each field in the JSON data
        for field in row:
            # Convert the field value to a numpy array
            values = np.array([row[field]])

            # Calculate the mean and median of the array
            mean = values.mean()
            median = values.median()

            # Add the mean and median to the results dictionary
            results[field]["mean"] = mean
            results[field]["median"] = median

    # Write the results to a CSV file
    with open(output_file, "w", newline="") as f:
        writer = csv.DictWriter(f, results.keys())
        writer.writeheader()
        writer.writerows(results.values())

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
