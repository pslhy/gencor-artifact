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
    # Generate weather data for specified number of hours
    current_time = datetime.now()
    start_time = current_time
    end_time = current_time + timedelta(hours=hours)
    generated_data = []

    while start_time < end_time:
        condition = WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]
        generated_data.append([start_time.strftime('%Y-%m-%d %H:%M:%S'), condition])
        start_time += timedelta(hours=1)

    # Create output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Back up previous data
    backup_dir = os.path.join(output_dir, "backup")
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
    shutil.copytree(output_dir, backup_dir)

    # Write generated weather data to CSV
    csv_file_path = os.path.join(output_dir, 'weather_data.csv')
    with open(csv_file_path, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(['Time', 'Condition'])
        writer.writerows(generated_data)

    return csv_file_path


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
