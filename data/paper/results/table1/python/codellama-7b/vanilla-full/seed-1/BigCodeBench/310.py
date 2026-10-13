from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Construct path to CSV file
    csv_path = os.path.join(os.getcwd(), filename)
    # Write to CSV file
    with open(csv_path, 'w', newline='') as csvfile:
        fieldnames = COLUMNS
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for person in range(PEOPLE_COUNT):
            name = f"Person {person}"
            age = random.randint(18, 65)
            height = random.uniform(1.5, 2.0)
            weight = random.uniform(50, 150)
            writer.writerow({'Name': name, 'Age': age, 'Height': height, 'Weight': weight})
    # Calculate and append averages to CSV file
    with open(csv_path, 'a', newline='') as csvfile:
        fieldnames = ['Average age', 'Average height', 'Average weight']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        data = csv.reader(open(csv_path))
        next(data)  # Skip header row
        age_sum = 0
        height_sum = 0
        weight_sum = 0
        for row in data:
            age_sum += int(row['Age'])
            height_sum += float(row['Height'])
            weight_sum += float(row['Weight'])
        writer.writerow({'Average age': age_sum / PEOPLE_COUNT,
                         'Average height': height_sum / PEOPLE_COUNT,
                         'Average weight': weight_sum / PEOPLE_COUNT})
    return csv_path


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
