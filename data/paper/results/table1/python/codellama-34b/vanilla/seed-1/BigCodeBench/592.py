from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Initialize sensor data
    sensor_data = {
        'Temperature': [0],
        'Humidity': [0],
        'Pressure': [0]
    }
    # Generate random data for given hours
    for i in range(hours):
        # Create a new Timestamp for each iteration
        timestamp = datetime.now() + timedelta(hours = i)
        for sensor in SENSORS:
            sensor_data[sensor].append(randint(0, 20))
    
    # Create the output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Write the data to a CSV file
    with open(os.path.join(output_dir, 'sensor_data.csv'), 'w') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Time', 'Temperature', 'Humidity', 'Pressure'])
        for i in range(hours):
            writer.writerow([timestamp, sensor_data['Temperature'][i], sensor_data['Humidity'][i], sensor_data['Pressure'][i]])


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
