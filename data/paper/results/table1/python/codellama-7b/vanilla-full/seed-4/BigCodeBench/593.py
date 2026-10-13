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
    # Generate traffic data for different vehicle types
    data = {}
    for vehicle_type in VEHICLE_TYPES:
        data[vehicle_type] = []
        for i in range(hours * 60):
            data[vehicle_type].append(randint(0, 100))
    
    # Save data to CSV file
    filename = f'{output_dir}/traffic_data_{datetime.now().strftime("%Y-%m-%d_%H-%M-%S")}.csv'
    with open(filename, 'w', newline='', encoding='utf-8') as f:
        headers = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(f, fieldnames=headers)
        writer.writeheader()
        for i, row in enumerate(data):
            writer.writerow({'Time': i * 60, **row})
    
    # Plot data
    df = pd.read_csv(filename)
    fig, ax = plt.subplots()
    for vehicle_type in VEHICLE_TYPES:
        ax.plot(df['Time'], df[vehicle_type], label=vehicle_type)
    ax.set(xlabel='Time', ylabel='Vehicle Count')
    ax.legend()
    fig.savefig(f'{output_dir}/traffic_visualization_{datetime.now().strftime("%Y-%m-%d_%H-%M-%S")}.png')
    return (filename, ax)


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
