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
    # create output directory if not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
        
    # create backup directory in output directory
    backup_dir = os.path.join(output_dir, 'backup')
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
        
    # generate weather data
    weather_data = []
    start_time = datetime.now()
    for i in range(hours):
        time = (start_time + timedelta(hours=i)).strftime("%Y-%m-%d %H:%M:%S")
        condition = WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]
        weather_data.append([time, condition])

    # save weather data to a csv file
    file_path = os.path.join(output_dir, 'weather_data.csv')
    with open(file_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time', 'Condition'])
        writer.writerows(weather_data)
        
    # backup file to the backup directory
    shutil.copy(file_path, backup_dir)
    
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
