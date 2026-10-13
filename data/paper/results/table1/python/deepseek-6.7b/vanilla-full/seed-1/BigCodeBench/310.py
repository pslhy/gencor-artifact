from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Generate fake data
    data = []
    for _ in range(PEOPLE_COUNT):
        name = 'Person_' + str(random.randint(1000, 9999))
        age = random.randint(18, 65)
        height = random.randint(150, 200)
        weight = random.randint(50, 120)
        data.append([name, age, height, weight])

    # Calculate averages
    avg_age = mean([row[1] for row in data])
    avg_height = mean([row[2] for row in data])
    avg_weight = mean([row[3] for row in data])

    # Append to the data
    data.append(['Average', avg_age, avg_height, avg_weight])

    # Save to CSV file
    with open(filename, 'w', newline='') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerow(COLUMNS)
        writer.writerows(data)

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
