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
    data = []
    for i in range(PEOPLE_COUNT):
        name = f"Person {i}"
        age = random.randint(18, 65)
        height = random.randint(150, 220)
        weight = random.randint(50, 200)
        data.append((name, age, height, weight))
    
    # Calculate and append average values
    average_age = round(mean(age for name, age, height, weight in data), 1)
    average_height = round(mean(height for name, age, height, weight in data), 1)
    average_weight = round(mean(weight for name, age, height, weight in data), 1)
    data.append(("Average", average_age, average_height, average_weight))
    
    # Save data to CSV file
    with open(filename, 'w') as csv_file:
        csv_writer = csv.writer(csv_file)
        csv_writer.writerow(COLUMNS)
        csv_writer.writerows(data)
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
