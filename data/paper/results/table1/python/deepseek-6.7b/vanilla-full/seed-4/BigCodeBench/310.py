from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Create data
    data = []
    for _ in range(PEOPLE_COUNT):
        name = os.urandom(8).hex()
        age = random.randint(1, 100)
        height = random.randint(130, 210)
        weight = random.randint(40, 150)
        data.append([name, age, height, weight])

    # Calculate average age, height, and weight
    average_age = mean([row[1] for row in data])
    average_height = mean([row[2] for row in data])
    average_weight = mean([row[3] for row in data])

    # Append average values to data
    data.append(['Average', average_age, average_height, average_weight])

    # Write to CSV
    with open(filename, 'w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(COLUMNS)  # write header
        writer.writerows(data)  # write data

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
