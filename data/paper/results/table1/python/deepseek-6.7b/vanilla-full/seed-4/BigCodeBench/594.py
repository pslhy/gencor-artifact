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
    # Create output directory if it does not exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Generate weather data
    weather_data = []
    current_time = datetime.now()
    for _ in range(hours):
        condition = WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]
        weather_data.append([current_time.strftime("%Y-%m-%d %H:%M:%S"), condition])
        current_time += timedelta(hours=1)
    
    # Save data to a CSV file
    file_name = 'weather_data.csv'
    file_path = os.path.join(output_dir, file_name)
    with open(file_path, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Time', 'Condition'])
        for row in weather_data:
            writer.writerow(row)
    
    # Backup file to a backup directory
    backup_dir = os.path.join(output_dir, 'backup')
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
    shutil.copy2(file_path, backup_dir)
    
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
