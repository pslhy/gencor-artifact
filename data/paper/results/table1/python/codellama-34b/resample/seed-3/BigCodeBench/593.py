# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
    # Create a list to store the data
    data = {v_type: list() for v_type in VEHICLE_TYPES}
    # Generate data for each vehicle type
    for hour in range(hours):
        for v_type in VEHICLE_TYPES:
            num_vehicles = randint(1, 100)
            data[v_type].append(num_vehicles)
    # Create the output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    # Save the data to a CSV file
    output_file = os.path.join(output_dir, 'traffic_data.csv')
    with open(output_file, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for hour, row in enumerate(data.values()):
            writer.writerow({'Time': hour, **row})
    # Load the data into a Pandas DataFrame
    df = pd.read_csv(output_file, index_col='Time')
    # Create a line chart showing the traffic data
    fig, ax = plt.subplots(figsize=(12, 8))
    for v_type, col in df.iteritems():
        ax.plot(col, label=v_type)
    ax.set_xlabel('Time')
    ax.set_ylabel('# of Vehicles')
    ax.set_title(f'Traffic Data (Hours: {hours})')
    plt.legend(loc='upper right', bbox_to_anchor=(1.3, 1))
    plt.savefig(os.path.join(output_dir, 'line_chart.png'))
    plt.close()
    return output_file, ax

