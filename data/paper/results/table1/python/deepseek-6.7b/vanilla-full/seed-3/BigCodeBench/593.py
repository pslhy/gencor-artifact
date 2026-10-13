from datetime import timedelta
import csv
import os
from datetime import datetime
from random import randint
import matplotlib.pyplot as plt
import pandas as pd
# Constants
VEHICLE_TYPES = ['Car', 'Bus', 'Truck', 'Bike']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Generate traffic data
    traffic_data = []
    current_time = datetime.now()
    for i in range(hours):
        data = { 'Time': current_time }
        for vehicle in VEHICLE_TYPES:
            data[vehicle] = randint(1, 100)
        traffic_data.append(data)
        current_time += timedelta(hours=1)

    # Save data to CSV file
    file_name = os.path.join(output_dir, 'traffic_data.csv')
    with open(file_name, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for data in traffic_data:
            writer.writerow(data)

    # Read data from CSV file and plot it
    data = pd.read_csv(file_name)
    ax = data.plot(x='Time', kind='line')
    plt.ylabel('Vehicle Count')

    return (file_name, ax)

# Test function
file_path, ax = task_func(24)
print(f'CSV file saved at {file_path}')
plt.show()


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generates traffic data for different vehicle types over a specified number of hours, saves the data to a CSV file with coloumns 'Time', 'Car', 'Bus', 'Truck', and 'Bike', and plots the data in a line chart with 'Time' on x-axis and 'Vehicle Count' on y-axis.
#     The function should output with:
#         tuple: Path to the CSV file and the matplotlib axes object of the line plot.
#     You should write self-contained code starting with:
#     ```
#     import csv
#     import os
#     from datetime import datetime
#     from random import randint
#     import matplotlib.pyplot as plt
#     import pandas as pd
#     # Constants
#     VEHICLE_TYPES = ['Car', 'Bus', 'Truck', 'Bike']
#     OUTPUT_DIR = './output'
#     def task_func(hours, output_dir=OUTPUT_DIR):
#     ```
