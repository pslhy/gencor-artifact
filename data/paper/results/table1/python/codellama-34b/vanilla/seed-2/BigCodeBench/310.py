from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Generate simulated data for 100 people
    data = []
    for i in range(PEOPLE_COUNT):
        name = f'Person {i}'
        age = random.randint(20, 80)
        height = round(random.uniform(150, 190), 2)
        weight = round(random.uniform(50, 100), 2)
        data.append((name, age, height, weight))
    # Calculate average age, height, and weight
    average_age = round(mean(x[1] for x in data), 2)
    average_height = round(mean(x[2] for x in data), 2)
    average_weight = round(mean(x[3] for x in data), 2)
    # Append the average values to the end of the data list
    data.append(('Average', average_age, average_height, average_weight))
    # Save the data to a CSV file
    file_path = os.path.abspath(filename)
    with open(file_path, 'w', newline='', encoding='utf-8') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(COLUMNS)
        csvwriter.writerows(data)
    return file_path


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
