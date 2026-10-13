from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
# Constants
SENSORS = ['Temperature', 'Humidity', 'Pressure']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Create the output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Define the filename with a timestamp in the name
    now = datetime.now()
    filename = os.path.join(output_dir, now.strftime("%Y-%m-%d-%H-%M-%S")+".csv")

    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time', 'Temperature', 'Humidity', 'Pressure'])

        # Generate data for the specified number of hours
        for i in range(hours):
            # Randomize the sensor readings between 0 and 100
            temp = randint(0, 100)
            humidity = randint(0, 100)
            pressure = randint(0, 100)
            # Calculate the time for data capture
            dt = now + timedelta(hours=i)
            writer.writerow([dt.strftime("%Y-%m-%d %H:%M:%S"), temp, humidity, pressure])

    return "Data written to {}".format(filename)


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
