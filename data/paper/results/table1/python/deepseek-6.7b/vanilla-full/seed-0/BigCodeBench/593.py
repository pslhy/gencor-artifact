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
    # Generate traffic data for specified number of hours
    traffic_data = []
    current_time = datetime.now()
    for i in range(hours):
        traffic_counts = {vehicle_type: randint(0, 200) for vehicle_type in VEHICLE_TYPES}
        traffic_data.append({'Time': current_time, **traffic_counts})
        current_time += timedelta(hours=1)
    
    # Save data to CSV file
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    csv_path = os.path.join(output_dir, 'traffic_data.csv')
    with open(csv_path, 'w', newline='') as csvfile:
        fieldnames = ['Time'] + VEHICLE_TYPES
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for data in traffic_data:
            writer.writerow(data)

    # Plot traffic data
    df = pd.read_csv(csv_path)
    df['Time'] = pd.to_datetime(df['Time'])
    plt.figure(figsize=(10, 6))
    for vehicle_type in VEHICLE_TYPES:
        plt.plot(df['Time'], df[vehicle_type], label=vehicle_type)
    plt.xlabel('Time')
    plt.ylabel('Vehicle Count')
    plt.title('Traffic Data Over Time')
    plt.legend()

    return csv_path, plt.gca()


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
