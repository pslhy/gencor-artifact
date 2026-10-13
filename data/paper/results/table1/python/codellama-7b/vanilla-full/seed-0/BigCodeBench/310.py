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
    with open(filename, 'w', newline='') as csvfile:
        fieldnames = COLUMNS
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for i in range(PEOPLE_COUNT):
            name = "Person {}".format(i + 1)
            age = random.randint(18, 55)
            height = random.randint(150, 210)
            weight = random.randint(50, 150)
            data = {"Name": name, "Age": age, "Height": height, "Weight": weight}
            writer.writerow(data)

    # Calculate and append the average age, height, and weight
    with open(filename, 'a', newline='') as csvfile:
        reader = csv.reader(csvfile)
        age_sum = sum(float(row["Age"]) for row in reader)
        height_sum = sum(float(row["Height"]) for row in reader)
        weight_sum = sum(float(row["Weight"]) for row in reader)
        age_mean = age_sum / PEOPLE_COUNT
        height_mean = height_sum / PEOPLE_COUNT
        weight_mean = weight_sum / PEOPLE_COUNT
        writer = csv.DictWriter(csvfile, fieldnames=COLUMNS)
        writer.writerow({"Average Age": age_mean, "Average Height": height_mean, "Average Weight": weight_mean})

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
