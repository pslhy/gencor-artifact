from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    now = datetime.now()
    file_path = os.path.join(os.path.abspath(os.getcwd()), "task_func_data", "Output.txt")
    os.makedirs(os.path.dirname(file_path), exist_ok=True)

    with open(file_path, 'w', newline='') as file:
        writer = csv.writer(file)
        for _ in range(10):
            temperature = round(random.uniform(20, 40), 2)
            humidity = round(random.uniform(50, 80), 2)
            timestamp = (now + timedelta(seconds=_)).strftime("%d/%m/%Y, %H:%M:%S")
            writer.writerow([timestamp, temperature, humidity])

    print(f"CSV file created by task_func: {file_path}")
    
    try:
        os.remove(file_path)
        print(f"CSV file deleted by task_func: {file_path}")
    except OSError:
        print(f"Error: Deleting file {file_path}")

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
