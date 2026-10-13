from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Generate data for the specified number of hours
    data = []
    current_time = datetime.now()
    for _ in range(hours):
        record = {}
        record['Time'] = current_time.strftime('%Y-%m-%d %H:%M:%S')
        for sensor in SENSORS:
            record[sensor] = randint(0, 100) if sensor != 'Temperature' else randint(10, 50)
        data.append(record)
        current_time += timedelta(hours=1)

    # Create output directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Write data to CSV file
    output_path = os.path.join(output_dir, 'sensor_data.csv')
    with open(output_path, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + SENSORS
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for record in data:
            writer.writerow(record)


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
