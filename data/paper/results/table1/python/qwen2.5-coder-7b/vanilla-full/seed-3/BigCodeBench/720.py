from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    directory = "task_func_data"
    filename = "Output.txt"
    path = os.path.join(directory, filename)

    if not os.path.exists(directory):
        os.makedirs(directory)

    with open(path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Timestamp", "Temperature", "Humidity"])
        for _ in range(10):  # Write 10 random data points
            timestamp = (datetime.now() + timedelta(minutes=random.randint(0, 100))).strftime("%Y-%m-%d %H:%M:%S")
            temperature = random.uniform(20, 35)
            humidity = random.uniform(30, 80)
            writer.writerow([timestamp, temperature, humidity])

    # Returns the path to the CSV file before deletion
    print("Data written to file:", path)
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
