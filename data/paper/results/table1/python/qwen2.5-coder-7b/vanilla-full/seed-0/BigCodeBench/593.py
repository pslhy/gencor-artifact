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
    # Create the output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Initialize lists to store data
    times = []
    data = {vehicle: [] for vehicle in VEHICLE_TYPES}

    # Generate traffic data
    for _ in range(hours * 60):  # Each hour has 60 minutes
        times.append(datetime.utcnow())
        for vehicle in VEHICLE_TYPES:
            count = randint(0, 100)  # Random count of vehicles
            data[vehicle].append(count)

    # Save data to CSV
    csv_path = os.path.join(output_dir, 'traffic_data.csv')
    with open(csv_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time'] + VEHICLE_TYPES)
        for time, row in zip(times, zip(*data.values())):
            writer.writerow([time] + list(row))

    # Plot the data
    df = pd.DataFrame({'Time': times, **data})
    df.set_index('Time', inplace=True)
    ax = df.plot(kind='line')
    ax.set_title('Vehicle Traffic Over Time')
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')

    # Return path to CSV and the axes object of the plot
    return csv_path, ax


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
