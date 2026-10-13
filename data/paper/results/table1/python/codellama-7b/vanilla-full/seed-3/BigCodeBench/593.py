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
    # Create CSV file and write headers
    filename = 'traffic_data.csv'
    filepath = os.path.join(output_dir, filename)
    with open(filepath, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
    # Generate traffic data
    start_time = datetime.now()
    for i in range(hours):
        time = start_time + timedelta(hours=i)
        vehicle_counts = [randint(1,10) for _ in range(4)]
        vehicle_types = VEHICLE_TYPES
        data = {'Time': time, 'Car': vehicle_counts[0], 'Bus': vehicle_counts[1], 'Truck': vehicle_counts[2], 'Bike': vehicle_counts[3]}
        writer.writerow(data)
    # Plot data
    df = pd.read_csv(filepath)
    fig, ax = plt.subplots()
    df.plot(x='Time', y=['Car', 'Bus', 'Truck', 'Bike'], kind='line', ax=ax)
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    ax.set_title('Traffic Data')
    plt.legend()
    plt.savefig(os.path.join(output_dir, 'traffic_data.png'))
    return filepath, ax


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
