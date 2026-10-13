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
    for i in range(hours):
        weather_data.append((datetime.now().strftime('%Y-%m-%d %H:%M:%S'), WEATHER_CONDITIONS[randint(0, 4)]))
    
    # Create CSV file with columns 'Time' and 'Condition'
    file_name = f'weather_data_{datetime.now().strftime("%Y-%m-%d_%H-%M-%S")}.csv'
    file_path = os.path.join(output_dir, file_name)
    with open(file_path, 'w', newline='', encoding='utf-8') as csvfile:
        fieldnames = ['Time', 'Condition']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for data in weather_data:
            writer.writerow({'Time': data[0], 'Condition': data[1]})
    
    # Back up CSV file to a backup directory
    backup_dir = os.path.join(output_dir, 'backups')
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)
    shutil.copy(file_path, os.path.join(backup_dir, file_name))
    
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
