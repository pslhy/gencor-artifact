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
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    file_path = os.path.join(output_dir, 'traffic_data.csv')
    time_values = []
    vehicle_counts = {'Car': [], 'Bus': [], 'Truck': [], 'Bike': []}

    for i in range(hours):
        time_values.append((datetime.now() + timedelta(hours=i)).strftime('%Y-%m-%d %H:%M:%S'))
        for vehicle in VEHICLE_TYPES:
            vehicle_counts[vehicle].append(randint(0, 100))

    with open(file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time'] + VEHICLE_TYPES)
        for t, counts in zip(time_values, zip(*vehicle_counts.values())):
            writer.writerow([t] + list(counts))

    df = pd.DataFrame({'Time': time_values, **vehicle_counts}).set_index('Time')
    ax = df.plot(kind='line', title='Traffic Data over Time')
    plt.xlabel('Time')
    plt.ylabel('Vehicle Count')

    return file_path, ax


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
