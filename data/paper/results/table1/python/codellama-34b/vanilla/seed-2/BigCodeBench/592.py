from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Check output directory exists
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Create CSV file for specified number of hours
    csv_filename = f'sensor_data_{hours}_hours.csv'
    csv_filepath = os.path.join(output_dir, csv_filename)
    with open(csv_filepath, 'w', newline='') as csvfile:
        fieldnames = ['Time', 'Temperature', 'Humidity', 'Pressure']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        
        # Create data for specified number of hours
        end_time = datetime.now() + timedelta(hours=hours)
        while datetime.now() < end_time:
            temperature = randint(0, 100)
            humidity = randint(0, 100)
            pressure = randint(0, 2000)
            writer.writerow({'Time': datetime.now().isoformat(), 'Temperature': temperature, 'Humidity': humidity, 'Pressure': pressure})

    return f'Sensor data created in {csv_filepath}'


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
