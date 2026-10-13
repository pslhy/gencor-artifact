from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Create a list to store the data
    data = []
    for i in range(PEOPLE_COUNT):
        # Create a random name, age, height, and weight
        name = "Person " + str(i)
        age = random.randint(20, 80)
        height = random.uniform(1.5, 2.0)
        weight = random.uniform(50, 100)
        # Add the data to the list
        data.append([name, age, height, weight])
    # Write the data to a CSV file
    with open(filename, "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(COLUMNS)
        writer.writerows(data)
    # Calculate and append the average age, height, and weight
    with open(filename, "a", newline="") as csvfile:
        writer = csv.writer(csvfile)
        avg_age = mean(row[1] for row in data)
        avg_height = mean(row[2] for row in data)
        avg_weight = mean(row[3] for row in data)
        writer.writerow(["Average", avg_age, avg_height, avg_weight])
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
