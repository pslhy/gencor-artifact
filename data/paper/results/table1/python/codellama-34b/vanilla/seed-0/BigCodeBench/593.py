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
    traffic_data = []
    current_time = datetime.now()
    for hour in range(1, hours+1):
        car_count = randint(0, 50)
        bus_count = randint(0, 20)
        truck_count = randint(0, 30)
        bike_count = randint(0, 10)
        traffic_data.append({
            'Time': (current_time + timedelta(hours=hour)).strftime('%H:%M:%S'),
            'Car': car_count,
            'Bus': bus_count,
            'Truck': truck_count,
            'Bike': bike_count
        })

    # Write data to a CSV file
    csv_file_path = os.path.join(output_dir, f'traffic_data_{current_time.strftime("%Y-%m-%d_%H-%M-%S")}.csv')
    with open(csv_file_path, 'w', newline='') as csvfile:
        fieldnames = ['Time', 'Car', 'Bus', 'Truck', 'Bike']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(traffic_data)

    # Create a line chart of the data
    # Initialize the figure
    fig, ax = plt.subplots(figsize=(10, 6))

    # Add lines for each vehicle type
    for vehicle_type in VEHICLE_TYPES:
        ax.plot(traffic_data['Time'], traffic_data[vehicle_type], label=vehicle_type)

    # Set title and labels
    ax.set_title('Traffic Data for 1 Hour')
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    ax.legend()

    # Save the plot to a file
    output_file_path = os.path.join(output_dir, f'traffic_line_chart_{current_time.strftime("%Y-%m-%d_%H-%M-%S")}.png')
    fig.savefig(output_file_path)

    return csv_file_path, axes


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
