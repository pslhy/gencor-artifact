from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    filename = os.path.join(output_dir, 'sensor_data.csv')
    start_time = datetime.now()
    with open(filename, mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=['Time', 'Temperature', 'Humidity', 'Pressure'])
        writer.writeheader()
        for _ in range(hours * 60 * 60 // 10):  # Assuming 10-second intervals
            current_time = start_time + timedelta(seconds=_ * 10)
            writer.writerow({
                'Time': current_time.strftime('%Y-%m-%d %H:%M:%S'),
                'Temperature': randint(20, 35),
                'Humidity': randint(30, 60),
                'Pressure': randint(1000, 1025)
            })


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
