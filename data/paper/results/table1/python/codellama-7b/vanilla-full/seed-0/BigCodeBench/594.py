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
    data = []
    current_time = datetime.now()
    for i in range(hours):
        row = {
            'Time': current_time.strftime("%Y-%m-%d %H:%M:%S"),
            'Condition': WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS) - 1)]
        }
        data.append(row)
        current_time += timedelta(minutes=30)

    # Save weather data to CSV file
    csv_file = os.path.join(output_dir, f"weather_data_{datetime.now().strftime('%Y-%m-%d_%H-%M-%S')}.csv")
    with open(csv_file, 'w', newline='') as csvfile:
        fieldnames = ['Time', 'Condition']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(data)

    # Backup CSV file to backup directory
    backup_dir = os.path.join(output_dir, "backup")
    if not os.path.isdir(backup_dir):
        os.makedirs(backup_dir)
    shutil.copyfile(csv_file, os.path.join(backup_dir, os.path.basename(csv_file)))

    # Return path of generated CSV file
    return csv_file

# Test the function
print(task_func(4))


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
