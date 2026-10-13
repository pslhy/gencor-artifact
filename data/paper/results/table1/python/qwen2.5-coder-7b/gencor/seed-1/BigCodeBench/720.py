
from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    output_file_path = "task_func_data/Output.txt"
    if not os.path.exists(os.path.dirname(output_file_path)):
        os.makedirs(os.path.dirname(output_file_path))
    with open(output_file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Timestamp", "Temperature", "Humidity"])
        for _ in range(10):  # Writing 10 random data points
            timestamp = (datetime.now() + timedelta(hours=random.randint(-24, 24))).strftime('%Y-%m-%d %H:%M:%S')
            temperature = random.uniform(20, 35)
            humidity = random.uniform(30, 70)
            writer.writerow([timestamp, temperature, humidity])
    return output_file_path

output_path = task_func()
print("CSV file created at:", output_path)
os.remove(output_path)


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
