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
    # Initialize data
    data = pd.DataFrame(
        columns=['Time', 'Car', 'Bus', 'Truck', 'Bike'],
        index=pd.date_range(start=datetime.now(), end=datetime.now() + timedelta(hours=hours), freq='H'),
        dtype='int64'
    )
    # Generate traffic data
    for column in data.columns:
        for _ in range(hours):
            data.loc[column, column] += randint(0, 100)
     # Save data to CSV file
    csv_filepath = os.path.join(output_dir, 'traffic-data.csv')
    data.to_csv(csv_filepath, index=False)
    # Create line plot
    fig, ax = plt.subplots()
    for column in data.columns:
        ax.plot(data['Time'], data[column], label=column)
    ax.legend()
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    return (csv_filepath, ax)

