from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
    output file_path = 'task_func_data/Output.txt'
    
    if not os.path.exists('task_func_data/'):
        os.makedirs('task_func_data/')
    
    with open(file_path, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(['Timestamp', 'Temperature', 'Humidity'])
        
        current_time = datetime.now()
        for _ in range(10):  # Example: 10 lines of data
            timestamp = current_time.strftime('%Y-%m-%d %H:%M:%S')
            temperature = random.uniform(20.0, 30.0)
            humidity = random.uniform(40.0, 60.0)
            writer.writerow([timestamp, temperature, humidity])
            current_time += timedelta(minutes=15)  # Append 15-minute intervals
    
    return file_path

# Example usage
path = task_func()
print(f"CSV file created at: {path}")
os.remove(path)
print("CSV file deleted.")


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
