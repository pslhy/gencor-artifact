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
    # Construct path to CSV file
    csv_path = os.path.join(output_dir, 'weather_data.csv')
    # Open CSV file and make sure directory exists
    os.makedirs(os.path.dirname(csv_path), exist_ok=True)
    with open(csv_path, 'w', newline='') as csv_file:
        # Write CSV header
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(['Time', 'Condition'])
        # Generate weather data
        for i in range(hours):
            # Simulate weather condition
            condition = WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS) - 1)]
            time = datetime.now() + timedelta(hours=i)
            # Write to CSV file
            csv_writer.writerow([time.strftime('%Y-%m-%d %H:%M:%S%z'), condition])
    # Backup CSV file
    shutil.copy(csv_path, os.path.join(OUTPUT_DIR, 'backup'))
    return csv_path


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
