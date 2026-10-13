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
    # Create a list to hold the weather data
    weather_data = []
    # Loop through the number of hours and generate weather data
    for hour in range(hours):
        weather_data.append({'Time': (datetime.now() + timedelta(hours=hour)).strftime('%Y-%m-%d %H:%M:%S'), 'Condition': WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS) - 1)]})

    # Write the weather data to a CSV file
    with open(os.path.join(output_dir, f'weather_data_{hours}hours.csv'), 'w', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['Time', 'Condition'])
        writer.writeheader()
        writer.writerows(weather_data)

    # Copy the CSV file to the backup directory
    shutil.copy2(csvfile.name, os.path.join(output_dir, 'backup'))

    # Return the path of the generated CSV file
    return csvfile.name

