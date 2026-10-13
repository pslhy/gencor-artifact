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
    # Generate traffic data for different vehicle types over the specified number of hours
    traffic_data = []
    for i in range(hours * 60):
        timestamp = datetime.now() + timedelta(minutes=i)
        for vehicle_type in VEHICLE_TYPES:
            traffic_data.append((timestamp, vehicle_type, randint(0, 100)))
    # Save traffic data to a CSV file
    csv_path = os.path.join(output_dir, 'traffic_data.csv')
    with open(csv_path, 'w', newline='') as csvfile:
        fieldnames = ['Time', 'Vehicle Type', 'Count']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for row in traffic_data:
            writer.writerow({'Time': row[0], 'Vehicle Type': row[1], 'Count': row[2]})
    # Plot traffic data in a line chart with 'Time' on x-axis and 'Vehicle Count' on y-axis
    df = pd.read_csv(csv_path)
    ax = df.plot(x='Time', y='Count', kind='line', subplots=True, layout=(2, 2), sharex=False, sharey=False)
    ax[0].set_title('Car Traffic')
    ax[1].set_title('Bus Traffic')
    ax[2].set_title('Truck Traffic')
    ax[3].set_title('Bike Traffic')
    plt.show()
    return (csv_path, ax)


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
