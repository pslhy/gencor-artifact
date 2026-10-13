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
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    csv_path = os.path.join(output_dir, f'traffic_data_{datetime.now().strftime("%Y%m%d%H%M%S")}.csv')
    
    data = {'Time': [], 'Car': [], 'Bus': [], 'Truck': [], 'Bike': []}
    current_time = datetime.now()
    
    for i in range(hours * 3600 + 1):
        current_time_str = current_time.strftime('%H:%M:%S')
        data['Time'].append(current_time_str)
        data['Car'].append(randint(0, 100))
        data['Bus'].append(randint(0, 20))
        data['Truck'].append(randint(0, 10))
        data['Bike'].append(randint(0, 50))
        current_time += timedelta(seconds=1)
    
    with open(csv_path, mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=data.keys())
        writer.writeheader()
        for row in zip(*data.values()):
            writer.writerow(dict(zip(data.keys(), row)))
    
    df = pd.DataFrame(data)
    ax = df.plot(kind='line', x='Time', y=['Car', 'Bus', 'Truck', 'Bike'], figsize=(10, 6))
    ax.set_xlabel('Time')
    ax.set_ylabel('Vehicle Count')
    ax.set_title('Traffic Data Over Time')
    plt.xticks(rotation=45)
    plt.tight_layout()
    
    return csv_path, ax


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
