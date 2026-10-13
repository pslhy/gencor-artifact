from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Create the file
    file_path = "task_func_data/Output.txt"
    with open(file_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(["Date", "Temperature", "Humidity"])

        # Generate data
        date = datetime.now()
        for _ in range(5):
            temp = random.randint(0, 100)
            humidity = random.randint(0, 100)
            writer.writerow([date.strftime('%Y-%m-%d %H:%M:%S'), temp, humidity])
            date = date + timedelta(hours=1)

    print(f"File {file_path} created")

    # Remove the file
    os.remove(file_path)
    print(f"File {file_path} removed")

    return file_path

file_path = task_func()
print(f"Path to the file: {file_path}")


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
