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
    # Generate traffic data for each vehicle type
    data = {vehicle_type: [] for vehicle_type in VEHICLE_TYPES}
    for hour in range(hours):
        for vehicle_type in VEHICLE_TYPES:
            data[vehicle_type].append(randint(0, 20))
    # Create DataFrame and save to CSV file
    now = datetime.now()
    data_df = pd.DataFrame(data, index=pd.date_range(start=now, periods=hours, freq='H'))
    csv_file_path = os.path.join(output_dir, f'traffic_data_{now:%Y-%m-%d %H:%M:%S}.csv')
    data_df.to_csv(csv_file_path, index=False)
    # Plot the data
    fig, ax = plt.subplots()
    data_df.plot(kind='line', ax=ax)
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    plt.title(f'Traffic Data for {hours} Hours')
    return (csv_file_path, ax)


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
