from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # List to hold data of people
    data = []

    # Generate mock data for 100 people
    for i in range(PEOPLE_COUNT):
        # Generate random age between 18 and 80
        age = random.randint(18, 80)
        # Generate random height between 140 and 200
        height = random.randint(140, 200)
        # Generate random weight between 40 and 150
        weight = random.randint(40, 150)

        data.append({'Name': f'Person{i+1}', 'Age': age, 'Height': height, 'Weight': weight})

    # Write data to CSV
    with open(filename, 'w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=COLUMNS)
        writer.writeheader()
        for row in data:
            writer.writerow(row)

    # Append average age, height and weight to CSV
    with open(filename, 'a', newline='') as file:
        ages = [person['Age'] for person in data]
        heights = [person['Height'] for person in data]
        weights = [person['Weight'] for person in data]
        avg_age = mean(ages)
        avg_height = mean(heights)
        avg_weight = mean(weights)

        writer = csv.writer(file)
        writer.writerow(['Average Age', avg_age])
        writer.writerow(['Average Height', avg_height])
        writer.writerow(['Average Weight', avg_weight])

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
