from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # List to hold people data
    people = []
    # Generating data
    for i in range(PEOPLE_COUNT):
        name = f"Person_{i}"
        age = random.randint(18, 80)
        height = round(random.normalvariate(170, 10), 2) # Mean height in cm
        weight = round(random.normalvariate(70, 10), 2) # Mean weight in kg
        people.append([name, age, height, weight])
    # Append average
    avg_age = round(mean(x[1] for x in people), 2)
    avg_height = round(mean(x[2] for x in people), 2)
    avg_weight = round(mean(x[3] for x in people), 2)
    people.append(["Average", avg_age, avg_height, avg_weight])
    # Write CSV file
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(COLUMNS)
        writer.writerows(people)
    return os.path.abspath(filename)


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
