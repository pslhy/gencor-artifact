from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):

    # Read the JSON input file and store the data in a dictionary
with open(input_file, 'r') as f:
    data_dict = json.load(f)

# Create a dictionary to store the mean and median for each key
key_stats = defaultdict(dict)

# Loop through each key in the data_dict and calculate its mean and median
for key, value in data_dict.items():
    # Convert the value list to a numpy array
    value_arr = np.array(value)
    # Calculate the mean and median
    key_stats[key]['mean'] = value_arr.mean()
    key_stats[key]['median'] = np.median(value_arr)

# Write the results to a CSV file
with open(output_file, 'w', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(['Key', 'Mean', 'Median'])
    for key, value in key_stats.items():
        writer.writerow([key, value['mean'], value['median']])


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
