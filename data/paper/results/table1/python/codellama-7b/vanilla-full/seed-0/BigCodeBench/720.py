from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():

    # Generate random temperature and humidity readings
    temperatures = [random.uniform(15, 30) for _ in range(100)]
    humidities = [random.uniform(30, 70) for _ in range(100)]

    # Convert to datetime objects
    times = [datetime.now() + timedelta(seconds=i) for i in range(0, 100, 5)]

    # Create CSV file
    path = os.path.join("task_func_data", "Output.txt")
    with open(path, "w") as output_file:
        writer = csv.writer(output_file)
        writer.writerows(zip(times, temperatures, humidities))

    return path


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
