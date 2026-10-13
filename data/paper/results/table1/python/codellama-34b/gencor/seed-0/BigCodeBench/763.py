
from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):

    # Read the JSON input file and store the data in a dictionary
    with open(input_file, 'r') as f:
        data = json.load(f)

    # Convert each 'subject' item in the JSON data to a list of dictionaries
    subjects = []
    for subject in data['subjects']:
        subjects.append({
            'label': subject['label'],
            'tasks': subject['tasks'].split(' ')
        })

    # calculate the mean and median for each key
    means = defaultdict(lambda: {'mean': 0, 'median': 0})
    for subject in subjects:
        for task in subject['tasks']:
            key = f"task_{task}"
            value = float(subject[key])
            means[key]['mean'] += value
            means[key]['median'] += value

    # Divide the means by the number of subjects to get the final mean
    for key, value in means.items():
        means[key]['mean'] /= len(subjects)

    # Divide the medians by the number of tasks to get the final median
    for subject in subjects:
        for task, value in subject.items():
            if task.startswith('task_'):
                key = task.replace('task_', '')
                means[key]['median'] += value / len(subject['tasks'])

    # Write the results to a CSV file
    with open(output_file, 'w') as f:
        writer = csv.writer(f)
        writer.writerow(['label', 'mean', 'median'])
        for key, value in means.items():
            writer.writerow([key, value['mean'], value['median']])

    return means

input_file = "input.json"
output_file = "output.csv"
result = task_func(input_file, output_file)
print(result)


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
