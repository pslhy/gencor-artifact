from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Generate random sensor data
    temperature = random.uniform(20, 30)
    humidity = random.uniform(50, 80)
    # Get current date and time
    now = datetime.now()
    # Create CSV file if it doesn't exist
    csv_file = "task_func_data/Output.txt"
    if not os.path.exists(csv_file):
        with open(csv_file, "w", newline="") as f:
            writer = csv.writer(f)
            writer.writerow(["Time", "Temperature", "Humidity"])
    # Append data to CSV file
    with open(csv_file, "a", newline="") as f:
        writer = csv.writer(f)
        writer.writerow([now.strftime("%Y-%m-%d %H:%M:%S"), temperature, humidity])
    # Return path to CSV file
    return csv_file


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
