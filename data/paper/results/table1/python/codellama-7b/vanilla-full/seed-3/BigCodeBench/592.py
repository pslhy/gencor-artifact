from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Create CSV file for output
    csv_file = os.path.join(output_dir, f"sensor_data_{hours}h.csv")
    with open(csv_file, 'w', newline='') as f:
        writer = csv.writer(f)
        # Write header row
        writer.writerow(['Time', 'Temperature', 'Humidity', 'Pressure'])
        # Generate data for specified number of hours
        current_time = datetime.now()
        for i in range(hours):
            # Calculate random sensor data for current time
            temperature = randint(20, 30)
            humidity = randint(40, 50)
            pressure = randint(900, 1000)
            # Write data row
            writer.writerow([current_time, temperature, humidity, pressure])
            # Increment time by 5 minutes
            current_time += timedelta(minutes=5)


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
