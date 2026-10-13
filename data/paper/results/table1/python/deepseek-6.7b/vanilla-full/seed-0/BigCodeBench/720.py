from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    # Generate random data for temperature and humidity
    temperatures = [random.uniform(10, 30) for _ in range(10)]
    humidities = [random.uniform(30, 90) for _ in range(10)]
    date_ranges = [(datetime.now() - timedelta(days=i), datetime.now() - timedelta(days=i-1)) for i in range(10)]
    dates = [random.choice(date_range)[0] for date_range in date_ranges]

    file_path = os.path.join(os.getcwd(), "task_func_data", "Output.txt")
    with open(file_path, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow(["Date", "Temperature", "Humidity"])
        for date, temp, humidity in zip(dates, temperatures, humidities):
            writer.writerow([str(date), temp, humidity])
    # Print the path to the CSV file
    print(f"CSV file has been created at: {file_path}")

    # Delete the CSV file
    os.remove(file_path)
    
    # Return the path to the CSV file
    return file_path


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create and delete a CSV file "task_func_data/Output.txt" with sensor data for temperature and humidity. The data is generated randomly, written in append mode, and the file is deleted after use.
#     The function should output with:
#         Returns the path to the CSV file "task_func_data/Output.txt" before deletion.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import csv
#     import random
#     from datetime import datetime
#     def task_func():
#     ```
