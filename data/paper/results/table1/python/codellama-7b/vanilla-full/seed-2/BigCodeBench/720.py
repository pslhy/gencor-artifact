from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    file_name = "task_func_data/Output.txt"
    with open(file_name, "a") as csv_file:
        csv_writer = csv.writer(csv_file)
        while True:
            # Generate random sensor data
            temp = random.uniform(20, 30)
            humidity = random.uniform(40, 60)
            # Write data to CSV file
            date_time = datetime.now().replace(microsecond=0)
            csv_writer.writerow([date_time.isoformat(), temp, humidity])
    # Delete the CSV file
    os.remove(file_name)
    return file_name


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
