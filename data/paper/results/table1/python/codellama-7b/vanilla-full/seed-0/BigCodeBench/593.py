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
    for i in range(hours):
        data[i] = {vt: randint(0, 10) for vt in VEHICLE_TYPES}

    # Create the CSV file
    filename = f'traffic_data_{hours}hours.csv'
    with open(os.path.join(output_dir, filename), 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['Time'] + VEHICLE_TYPES)
        writer.writeheader()
        for i in range(hours):
            row = {vt: data[i][vt] for vt in VEHICLE_TYPES}
            row['Time'] = datetime.now().strftime('%H:%M:%S')
            writer.writerow(row)

    # Create the line plot
    fig, ax = plt.subplots()
    title = f'Traffic Data for {hours} Hours'
    ax.set_title(title)
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    ax.grid(True)
    for vt in VEHICLE_TYPES:
        ax.plot(data.keys(), [d[vt] for d in data.values()], label=vt)
    ax.legend()
    fig.tight_layout()

    # Return the path to the CSV file and the matplotlib axes object
    return os.path.join(output_dir, filename), ax

# Test the function
Path, ax = task_func(10)
print(f'CSV file path: {Path}')
print('Matplotlib axes:')
print(ax)


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
