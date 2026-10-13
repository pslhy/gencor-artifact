from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Set paths
    file_path = os.path.join("task_func_data", "Output.txt")
    with open(file_path, "a", newline="") as csv_file:
        # Write header row
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(["Timestamp", "Temperature", "Humidity"])
        # Write random data for 5 minutes
        start_time = datetime.now()
        while (datetime.now() - start_time) < timedelta(minutes=5):
            csv_writer.writerow([datetime.now(), random.randint(10, 30), random.randint(30, 70)])
    # Delete file
    os.remove(file_path)
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
