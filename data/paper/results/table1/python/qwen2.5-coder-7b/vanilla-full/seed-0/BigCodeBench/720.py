from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Define the path to the CSV file
    file_path = "task_func_data/Output.txt"
    
    # Generate random data for 100 data points
    data = []
    for _ in range(100):
        temperature = random.uniform(20.0, 30.0)
        humidity = random.uniform(30.0, 70.0)
        timestamp = (datetime.now() + timedelta(seconds=_)).strftime("%Y-%m-%d %H:%M:%S")
        data.append([timestamp, temperature, humidity])
    
    # Write data to the CSV file in append mode
    with open(file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Timestamp", "Temperature", "Humidity"])
        writer.writerows(data)
    
    # Return the path to the CSV file before deletion
    return file_path


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
