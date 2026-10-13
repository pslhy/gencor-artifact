from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Ensure directory exists
    os.makedirs(output_dir, exist_ok=True)

    # Calculate the end time
    end_time = datetime.now() + timedelta(hours=hours)

    # Generate random sensor data
    with open(os.path.join(output_dir, 'sensor_data.csv'), 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['Time', 'Temperature', 'Humidity', 'Pressure'])
        writer.writeheader()

        current_time = datetime.now()
        while current_time < end_time:
            sensor_data = {sensor: randint(1, 100) for sensor in SENSORS}
            sensor_data['Time'] = current_time.isoformat()
            writer.writerow(sensor_data)

            current_time += timedelta(minutes=15)


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
