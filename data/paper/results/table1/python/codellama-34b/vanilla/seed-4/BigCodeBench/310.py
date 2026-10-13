from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Generate random data for 100 people
    data_list = []
    for i in range(PEOPLE_COUNT):
        name = f"Person {i}"
        age = random.randint(18, 70)
        height = random.uniform(1.50, 2.00)
        weight = random.uniform(50, 100)
        data_list.append([name, age, height, weight])
    # Write data to CSV file
    with open(filename, 'w', encoding='utf-8') as f:
        writer = csv.writer(f)
        writer.writerow(COLUMNS)
        writer.writerows(data_list)
    # Calculate and append averages to file
    with open(filename, 'a', encoding='utf-8') as f:
        writer = csv.writer(f)
        averages = [mean(row[1]) for row in data_list]
        writer.writerow(['Averages'] + averages)
    return filename


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Generates a CSV file containing simulated data for 100 people, including name, age, height, and weight. It also calculates and appends the average age, height, and weight at the end of the file.
#     The function should output with:
#         str: The path of the created CSV file.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import csv
#     import random
#     from statistics import mean
#     # Constants
#     COLUMNS = ['Name', 'Age', 'Height', 'Weight']
#     PEOPLE_COUNT = 100
#     def task_func(filename):
#     ```
