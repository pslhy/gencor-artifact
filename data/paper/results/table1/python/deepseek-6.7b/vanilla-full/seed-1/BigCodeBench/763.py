from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    results = defaultdict(dict)

    # Read from JSON file
    with open(input_file, 'r') as f:
        data = json.loads(f.read())

    # Calculate mean and median for each key
    for item in data:
        for key in item.keys():
            # adding the values to the key in results
            if key not in results:
                results[key]['values'] = []
            results[key]['values'].append(item[key])

    for key, value in results.items():
        values = np.array(value['values'])
        # calculating mean
        results[key]['mean'] = np.mean(values)
        # calculating median
        results[key]['median'] = np.median(values)

    # Write to CSV file
    with open(output_file, 'w') as f:
        writer = csv.writer(f)
        writer.writerow(['Field', 'Mean', 'Median'])
        for key, value in results.items():
            writer.writerow([key, value['mean'], value['median']])

    # outputting the results as a dictionary
    result_dict = {key: {'mean': value['mean'], 'median': value['median']} for key, value in results.items()}
    
    return result_dict


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
