from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Create output directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Generate sensor data
    data = []
    start_time = datetime.now()
    for hour in range(hours):
        for _ in range(60):  # Generate data for 60 minutes per hour
            data.append({
                'Time': (start_time + timedelta(hours=hour)).strftime('%Y-%m-%d %H:%M:%S'),
                'Temperature': randint(20, 30),  # Random values between 20 and 30
                'Humidity': randint(50, 90),  # Random values between 50 and 90
                'Pressure': randint(950, 1050)  # Random values between 950 and 1050
            })
    
    # Save sensor data to CSV file
    with open(os.path.join(output_dir, 'sensor_data.csv'), 'w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=['Time'] + SENSORS)
        writer.writeheader()
        for row in data:
            writer.writerow(row)


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
