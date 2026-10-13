# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):

    # Initialize constants and variables
    SENSOR_DATA = [{} for i in range(hours)]
    DAYS_SINCE_1970 = int(datetime.now().timestamp() / 86400)
    CURRENT_TIME = datetime.now()

    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Generate random sensor data
    for i in range(hours):
        for sensor in SENSORS:
            SENSOR_DATA[i].setdefault(sensor, 0)
            SENSOR_DATA[i][sensor] += randint(-10, 10)
        CURRENT_TIME += timedelta(hours=1)

    # Write data to CSV file
    with open(os.path.join(output_dir, 'sensor_data.csv'), 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile, delimiter=',')
        header = ['Time'] + SENSOR_DATA[0].keys()
        csvwriter.writerow(header)
        for i in range(hours):
            csvwriter.writerow([CURRENT_TIME.strftime('%Y-%m-%d %H:%M:%S')] + list(SENSOR_DATA[i].values()))

if __name__ == "__main__":
    task_func(hours=24)

