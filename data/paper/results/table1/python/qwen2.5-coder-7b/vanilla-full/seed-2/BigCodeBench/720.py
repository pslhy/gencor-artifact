from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    base_path = "task_func_data"
    file_path = os.path.join(base_path, "Output.csv")

    # Ensure the directory exists
    if not os.path.exists(base_path):
        os.makedirs(base_path)

    with open(file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Timestamp", "Temperature", "Humidity"])

        for _ in range(5):  # Example: Writing 5 records
            timestamp = (datetime.now() + timedelta(days=_)).strftime("%Y-%m-%d %H:%M:%S")
            temperature = round(random.uniform(20.0, 30.0), 2)
            humidity = round(random.uniform(30.0, 70.0), 2)
            writer.writerow([timestamp, temperature, humidity])

    return file_path

# Example usage:
file_path = task_func()
print(f"CSV file created at: {file_path}")


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
