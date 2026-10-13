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
    # Initialize variables
    time_step = timedelta(minutes=15)
    start_time = datetime.now()
    end_time = start_time + timedelta(hours=hours)
    data = {vehicle_type: [] for vehicle_type in VEHICLE_TYPES}

    # Generate traffic data
    while start_time < end_time:
        for vehicle_type in VEHICLE_TYPES:
            data[vehicle_type].append(randint(0, 100))
        start_time += time_step

    # Save data to CSV file
    csv_file_path = os.path.join(output_dir, 'traffic_data.csv')
    with open(csv_file_path, 'w', newline='') as csv_file:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()
        for time_str in data:
            writer.writerow({'Time': time_str} + {vehicle_type: data[vehicle_type][i] for i, vehicle_type in enumerate(VEHICLE_TYPES)})

    # Create line plot
    df = pd.read_csv(csv_file_path)
    # Drop 'Time' column since it's not needed for plotting
    df = df.drop(columns=['Time'])
    # Assign 'Vehicle Count' column names
    df.columns = ['Car', 'Bus', 'Truck', 'Bike']
    plot_ax = df.plot(kind='line', x='Time', y='Vehicle Count', figsize=(12, 6))
    return csv_file_path, plot_ax


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
