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

    # Define the filename and path to the csv
    now = datetime.now()
    timestamp = now.strftime("%Y%m%d-%H%M%S")
    csv_file_path = os.path.join(output_dir, f'traffic_data_{timestamp}.csv')

    # Generate traffic data and save to csv
    with open(csv_file_path, 'w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=['Time'] + VEHICLE_TYPES)
        writer.writeheader()

        now = datetime.now()
        for _ in range(hours):
            now += timedelta(hours=1)
            data = {
                'Time': now.strftime("%Y-%m-%d %H:%M:%S"),
                'Car': randint(10, 50),
                'Bus': randint(10, 50),
                'Truck': randint(10, 50),
                'Bike': randint(10, 50)
            }
            writer.writerow(data)

    # Load the data from csv file into a pandas DataFrame
    df = pd.read_csv(csv_file_path)

    # Convert the Time column to datetime
    df['Time'] = pd.to_datetime(df['Time'])

    # Generate the line chart for each vehicle type
    fig, ax = plt.subplots()
    for vehicle in VEHICLE_TYPES:
        ax.plot(df['Time'], df[vehicle], label=vehicle)

    ax.legend()

    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')

    return csv_file_path, ax

# Test the function
filepath, ax = task_func(5)
print(f'CSV file path: {filepath}')
plt.show()


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
