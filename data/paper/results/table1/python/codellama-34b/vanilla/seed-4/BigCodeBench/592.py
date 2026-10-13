from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Generate random seed for consistent output
    random_seed = randint(1, 100)
    # Create the directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    # Create the file
    output_file = os.path.join(output_dir, f'data{hours}.csv')
    with open(output_file, 'w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        date_time = datetime.now()
        for _ in range(hours):
            for sensor in SENSORS:
                value = randint(0, 100)
                writer.writerow([date_time, sensor, value])
                date_time += timedelta(hours=1)


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
