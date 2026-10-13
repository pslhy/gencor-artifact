from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Set paths
    base_dir = os.path.join(os.path.dirname(__file__), ".")
    csv_path = os.path.join(base_dir, "task_func_data.json")

    # Set up data
    data = {"time": [], "temperature": [], "humidity": []}
    for i in range(10000):
        data["time"].append(str(datetime.now() + timedelta(seconds=i)))
        data["temperature"].append(random.randint(0, 100))
        data["humidity"].append(random.randint(0, 100))

    # Create and write data to CSV
    with open(csv_path, "w", newline="") as f:
        writer = csv.writer(f)
        header = ["time", "temperature", "humidity"]
        writer.writerow(header)
        for row in data:
            writer.writerow(row)
    
    # Return path to CSV file
    return csv_path


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create and delete a CSV file "task_func_data/Output.txt" with sensor data for temperature and humidity. The data is generated randomly, written in append mode, and the file is deleted after use.
#     The function should output with:
#         Returns the path to the CSV file "task_func_data/Output.txt" before deletion.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import csv
#     import random
#     from datetime import datetime
#     def task_func():
#     ```
