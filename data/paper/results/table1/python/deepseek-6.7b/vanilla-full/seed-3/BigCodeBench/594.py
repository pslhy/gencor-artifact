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
    # Generate weather data
    weather_data = []
    time = datetime.now()
    for i in range(hours):
        weather_data.append({
            'Time': time.strftime('%Y-%m-%d %H:%M:%S'),
            'Condition': WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]
        })
        time += timedelta(hours=1)  # increment the time by 1 hour

    # Create backup directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Create CSV file and write data to it
    file_path = os.path.join(output_dir, 'weather_data.csv')
    with open(file_path, 'w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=['Time', 'Condition'])
        writer.writeheader()
        writer.writerows(weather_data)

    # Create backup directory if it does not exist
    backup_dir = os.path.join(output_dir, 'backup')
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)

    # Move the CSV file to the backup directory
    shutil.move(file_path, os.path.join(backup_dir, 'weather_data.csv'))

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
