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
    # Create the output directory if it doesn't exist
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    # Define the filename and path for the CSV
    now = datetime.now()
    timestamp = now.strftime("%Y%m%d-%H%M%S")
    csv_filename = f"weather_data_{timestamp}.csv"
    csv_filepath = os.path.join(output_dir, csv_filename)

    # Create the CSV file and write the header
    with open(csv_filepath, 'w', newline='') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(['Time', 'Condition'])

        # Generate the weather data
        current_time = now
        for _ in range(hours):
            # Generate a random weather condition and time difference
            condition = WEATHER_CONDITIONS[randint(0, len(WEATHER_CONDITIONS)-1)]
            time_diff = timedelta(hours=randint(1, 12))

            # Update the current time
            current_time += time_diff

            # Write the row to the CSV
            writer.writerow([current_time.strftime("%Y-%m-%d %H:%M:%S"), condition])
    
    # Backup the CSV file to the backup directory
    backup_dir = os.path.join(output_dir, 'backup')
    if not os.path.exists(backup_dir):
        os.makedirs(backup_dir)

    shutil.copy(csv_filepath, backup_dir)

    return csv_filepath


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
