# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Set up path to CSV file
    csv_path = os.path.join(os.getcwd(), filename)
    # Generate simulated data
    people = []
    for i in range(PEOPLE_COUNT):
        name = f"Person {i}"
        age = random.randint(18, 100)
        height = random.uniform(100, 200)
        weight = random.uniform(100, 200)
        people.append([name, age, height, weight])
     # Calculate statistics
    ages = [person[1] for person in people]
    heights = [person[2] for person in people]
    weights = [person[3] for person in people]
    age_avg = mean(ages)
    height_avg = mean(heights)
    weight_avg = mean(weights)
    # Write to CSV file
    with open(csv_path, 'w', newline='') as csvfile:
        csvwriter = csv.writer(csvfile)
        csvwriter.writerow(COLUMNS)
        csvwriter.writerows(people)
        csvwriter.writerow(['', '', '', 'average'])
        csvwriter.writerow(['', '', '', age_avg])
        csvwriter.writerow(['', '', '', height_avg])
        csvwriter.writerow(['', '', '', weight_avg])
    return csv_path

