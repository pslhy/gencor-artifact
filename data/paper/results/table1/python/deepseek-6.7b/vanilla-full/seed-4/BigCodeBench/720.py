from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Create data
    data = [["Time", "Temperature", "Humidity"]]
    start_time = datetime.now()
    for _ in range(10):  # Generate 10 data points
        timestamp = (start_time + timedelta(minutes=10*_)).strftime("%Y-%m-%d %H:%M:%S")
        temperature = random.uniform(15, 30)
        humidity = random.uniform(40, 80)
        data.append([timestamp, temperature, humidity])

    # Create CSV file
    os.makedirs("task_func_data", exist_ok=True)
    file_path = os.path.join("task_func_data", "Output.txt")
    with open(file_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerows(data)

    # Delete CSV file
    os.remove(file_path)

    # Return file path
    return file_path
print(task_func())


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
