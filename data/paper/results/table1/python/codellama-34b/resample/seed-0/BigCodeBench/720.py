# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():

    # Generate a random temperature and humidity reading
    temperature = random.randint(0, 100)
    humidity = random.randint(0, 100)

    # Create the CSV file with the current date and time
    file_name = "task_func_data/Output.txt"
    if not os.path.exists(file_name):
        os.makedirs(os.path.dirname(file_name))
    with open(file_name, 'a') as file:
        file.write(f"{datetime.now()},{temperature},{humidity}\n")

    # Delete the file after use
    file_name = "task_func_data/Output.txt"
    if os.path.exists(file_name):
        os.remove(file_name)

    return file_name

