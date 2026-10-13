from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    file_path = "/task_func_data/Output.txt"
    with open(file_path, mode='a', newline='') as file:
        writer = csv.writer(file)
        # Write headers if the file is empty
        if file.tell() == 0:  
            writer.writerow(["Timestamp", "Temperature", "Humidity"])
        
        # Generate random sensor data
        for _ in range(10):
            timestamp = (datetime.now() + timedelta(minutes=random.randint(-10, 10))).isoformat()
            temperature = random.uniform(20.0, 35.0)
            humidity = random.uniform(30.0, 80.0)
            writer.writerow([timestamp, temperature, humidity])
    
    # Return the path to the file before deletion
    return file_path

# For demonstration, the function is called and the returned file path is printed.
print(task_func())
os.remove("/task_func_data/Output.txt")


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
