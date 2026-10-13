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
    weather_condition = 'Sunny'
    for hour in range(hours):
        weather_data.append((datetime.now() + timedelta(hours=hour), weather_condition))
        weather_condition = WEATHER_CONDITIONS[randint(0,4)]

    # Save the data to a CSV file
    filepath = os.path.join(output_dir, 'weather_data.csv')
    with open(filepath, 'w', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile, delimiter=',')
        writer.writerow(['Time', 'Condition'])
        writer.writerows(weather_data)

    # Backup the file to a backup directory
    backup_dir = output_dir + '/backup'
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
    shutil.copy2(filepath, os.path.join(backup_dir, os.path.basename(filepath)))

    return filepath


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
