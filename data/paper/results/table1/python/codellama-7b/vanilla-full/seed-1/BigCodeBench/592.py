from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Construct path to CSV file
    csv_path = os.path.join(output_dir, 'sensor_data.csv')
    # Open CSV file and make sure directory exists
    os.makedirs(os.path.dirname(csv_path), exist_ok=True)
    with open(csv_path, 'w', newline='') as csv_file:
        # Write CSV header
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(['Time'] + SENSORS)
        # Generate data for requested number of hours
        start_time = datetime.now()
        for i in range(hours):
            # Generate random sensor data
            data = [start_time + timedelta(hours=i)] + [randint(20, 30) for _ in SENSORS]
            # Write data to CSV file
            csv_writer.writerow(data)
    print(f'Data generated and saved to {csv_path}')


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
