from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Generate data
    data = [{'Time': (datetime.now() + timedelta(hours=i)).strftime('%Y-%m-%d %H:%M:%S'),
             'Temperature': randint(20, 30),
             'Humidity': randint(40, 60),
             'Pressure': randint(700, 800)} for i in range(hours)]

    # Create directory if not exists
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Write data to csv
    with open(os.path.join(output_dir, 'sensor_data.csv'), 'w') as f:
        writer = csv.DictWriter(f, fieldnames=['Time', 'Temperature', 'Humidity', 'Pressure'])
        writer.writeheader()
        for entry in data:
            writer.writerow(entry)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create sensor data for the specified number of hours and save it in a CSV file with coloumns 'Time', 'Temperature', 'Humidity' and 'Pressure'.
#     The function should output with:
#         hours (int): Number of hours to generate data for.
#     You should write self-contained code starting with:
#     ```
#     import csv
#     import os
#     from datetime import datetime
#     from random import randint
#     # Constants
#     SENSORS = ['Temperature', 'Humidity', 'Pressure']
#     OUTPUT_DIR = './output'
#     def task_func(hours, output_dir=OUTPUT_DIR):
#     ```
