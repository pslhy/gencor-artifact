from datetime import timedelta
import csv
import os
import shutil
from datetime import datetime
from random import randint
# Constants
WEATHER_CONDITIONS = ['Sunny', 'Cloudy', 'Rainy', 'Snowy', 'Stormy']
OUTPUT_DIR = './output'
def task_func(hours, output_dir=OUTPUT_DIR):
    # Create output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Generate weather data for the specified number of hours
    start_time = datetime.now()
    end_time = start_time + timedelta(hours=hours)
    time_delta = end_time - start_time
    time_steps = list(range(0, time_delta.total_seconds(), 3600))
    weather_data = []
    for i in time_steps:
        weather_data.append([start_time + timedelta(seconds=i), WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS) - 1)]])

    # Write weather data to CSV file
    file_path = os.path.join(output_dir, f'weather_data-{str(datetime.now())}.csv')
    with open(file_path, 'w', newline='') as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(['Time', 'Condition'])
        for weather_datum in weather_data:
            csv_writer.writerow(weather_datum)

    # Back up CSV file
    shutil.copyfile(file_path, os.path.join(output_dir, f'weather_data-{str(datetime.now())}-backup.csv'))

    return file_path


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generate weather data for the specified number of hours, save it in a CSV file with colomns 'Time' and 'Condition' and back up the file to a backup directory.
#     The function should output with:
#         str: The path of the generated CSV file.
#     You should write self-contained code starting with:
#     ```
#     import csv
#     import os
#     import shutil
#     from datetime import datetime
#     from random import randint
#     # Constants
#     WEATHER_CONDITIONS = ['Sunny', 'Cloudy', 'Rainy', 'Snowy', 'Stormy']
#     OUTPUT_DIR = './output'
#     def task_func(hours, output_dir=OUTPUT_DIR):
#     ```
