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

    # File path
    file_path = os.path.join(output_dir, f'weather_{datetime.now().strftime("%Y%m%d%H%M%S")}.csv')
    backup_path = os.path.join(output_dir, f'weather_{datetime.now().strftime("%Y%m%d%H%M%S")}.csv.bak')

    # Generate weather data
    data = []
    now = datetime.now()
    for _ in range(hours):
        data.append([now.strftime('%Y-%m-%d %H:%M:%S'), WEATHER_CONDITIONS[randint(0, 4)]])
        now += timedelta(hours=1)

    # Save to CSV
    with open(file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time', 'Condition'])
        writer.writerows(data)

    # Backup the file
    shutil.copy2(file_path, backup_path)

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
