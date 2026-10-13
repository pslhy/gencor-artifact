from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Initialize the CSV writer and create the directory if it doesn't exist
    csv_writer = csv.writer(open(f'{output_dir}/{datetime.now().strftime("%Y-%m-%d %H-%M-%S")}.csv', 'w'))
    csv_writer.writerow(['Time', 'Temperature', 'Humidity', 'Pressure'])
    # Generate data for the specified number of hours
    for i in range(hours):
        # Create a random timestamp for the data point
        timestamp = datetime.now() - timedelta(hours=i)
        # Create a random value for each sensor
        temperature = randint(10, 30)
        humidity = randint(20, 60)
        pressure = randint(700, 1000)
        # Write the data point to the CSV file
        csv_writer.writerow([timestamp, temperature, humidity, pressure])
    return None

# Call the function with the specified number of hours
task_func(hours=10)


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
