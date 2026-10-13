from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Create a list to hold the sensor data
    sensor_data = []
    # Set the start date and time
    start_date = datetime(2023, 2, 1)
    # Calculate the end date and time
    end_date = start_date + timedelta(hours=hours)
    # Iterate over the time range in 1-hour increments
    for current_time in (start_date + timedelta(hours=i) for i in range(hours)):
        # Get a random value for each sensor
        temperature = randint(20, 30)
        humidity = randint(60, 80)
        pressure = randint(1000, 1100)
        # Append the sensor data to the list
        sensor_data.append([current_time, temperature, humidity, pressure])
    # Create the output directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    # Write the sensor data to a CSV file in the output directory
    with open(os.path.join(output_dir, f'sensor_data_{hours}h.csv'), 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Time', 'Temperature', 'Humidity', 'Pressure'])
        for data in sensor_data:
            writer.writerow(data)


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
