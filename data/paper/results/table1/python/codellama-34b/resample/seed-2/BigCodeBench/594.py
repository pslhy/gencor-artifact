# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
    # Generate weather data for the specified number of hours
    weather_data = []
    current_time = datetime.now()
    for i in range(hours):
        current_time += timedelta(hours=1)
        weather_data.append([current_time.strftime("%Y-%m-%d %H:%M:%S"), WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]])

    # Save the weather data to a CSV file
    csv_file_name = os.path.join(output_dir, 'weather_data.csv')
    with open(csv_file_name, 'w', encoding='utf-8') as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(['Time', 'Condition'])
        csv_writer.writerows(weather_data)

    # Backup the file to a backup directory
    backup_dir = os.path.join(output_dir, 'backups')
    if not os.path.exists(backup_dir):
        os.mkdir(backup_dir)
    shutil.copy(csv_file_name, os.path.join(backup_dir, 'weather_data-{}.csv'.format(str(datetime.now())[:10])))

    return csv_file_name

