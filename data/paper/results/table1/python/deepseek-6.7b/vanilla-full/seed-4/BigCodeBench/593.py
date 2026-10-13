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
    # Create output directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Initialize data
    data = {vehicle: [] for vehicle in VEHICLE_TYPES}
    times = []
    for i in range(hours):
        time = datetime.now() + timedelta(hours=i)
        times.append(time)
        for vehicle in VEHICLE_TYPES:
            # Generate random number of vehicles
            count = randint(0, 100)
            data[vehicle].append(count)

    # Save data to CSV
    csv_path = os.path.join(output_dir, 'traffic_data.csv')
    with open(csv_path, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for i in range(hours):
            row = {'Time': times[i]}
            for vehicle in VEHICLE_TYPES:
                row[vehicle] = data[vehicle][i]
            writer.writerow(row)

    # Load data from CSV
    df = pd.read_csv(csv_path)

    # Plot data
    fig, ax = plt.subplots()
    for vehicle in VEHICLE_TYPES:
        ax.plot(df['Time'], df[vehicle], label=vehicle)
    ax.legend()
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
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
