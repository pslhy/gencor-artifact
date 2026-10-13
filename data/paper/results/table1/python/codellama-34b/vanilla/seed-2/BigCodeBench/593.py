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
    # Generate traffic data for each vehicle type over the specified number of hours
    traffic_data = []
    for hour in range(hours):
        for vehicle_type in VEHICLE_TYPES:
            traffic_data.append({
                'time': datetime.now() + timedelta(hours=hour),
                'vehicle_type': vehicle_type,
                'count': randint(0, 10),
            })
    # Create a pandas dataframe from the traffic data
    df = pd.DataFrame(traffic_data)
    # Write the dataframe to a CSV file
    csv_file_path = os.path.join(output_dir, f'traffic_{hours}h.csv')
    df.to_csv(csv_file_path, index=False)
    # Plot the data as a line chart
    ax = plt.plot(df['time'], df['count'], label='Vehicle Count')
    plt.legend()
    plt.xlabel('Time (HH:MM:SS)')
    plt.ylabel('Vehicle Count')
    plt.title(f'Traffic Data for {hours} Hours')
    plt.show()
    return csv_file_path, ax


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
