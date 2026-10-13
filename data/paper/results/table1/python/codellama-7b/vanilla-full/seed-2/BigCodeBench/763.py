from datetime import timedelta
import numpy as np
from collections import defaultdict
import json
import csv
# Constants
def task_func(input_file, output_file):
    # Read the input file
    with open(input_file, "r") as f:
        input_data = json.load(f)
    
    # Calculate the mean and median for each key
    output_data = defaultdict(lambda: defaultdict(float))
    for row in input_data:
        for key in row:
            output_data[key]["mean"] += row[key]
            output_data[key]["median"] += row[key]
    for key in output_data:
        output_data[key]["mean"] /= len(input_data)
        output_data[key]["median"] = np.median(output_data[key]["median"])
    
    # Write the results to a CSV file
    with open(output_file, "w", newline="") as f:
        writer = csv.writer(f)
        for key in output_data:
            writer.writerow([key, output_data[key]["mean"], output_data[key]["median"]])
            
if __name__ == "__main__":
    input_file = "input.json"
    output_file = "output.csv"
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
