# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Create temporary file for output
    output_file = 'task_func_data/Output.txt'
    with open(output_file, 'w', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(['datetime', 'temperature', 'humidity'])
        for i in range(100):
            writer.writerow([datetime.now(), random.randint(0,100), random.randint(0,100)])

    # Delete output file after writing it
    os.remove(output_file)
    return output_file

