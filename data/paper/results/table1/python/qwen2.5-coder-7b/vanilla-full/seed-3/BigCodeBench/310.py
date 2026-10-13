from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    directory = os.path.dirname(filename)
    if not os.path.exists(directory):
        os.makedirs(directory)

    data = {
        'age': [],
        'height': [],
        'weight': []
    }

    with open(filename, mode='w', newline='') as file:
        writer = csv.DictWriter(file, fieldnames=COLUMNS)
        writer.writeheader()
        for _ in range(PEOPLE_COUNT):
            name = f'Person{random.randint(1, 1000)}'
            age = random.randint(18, 65)
            height = round(random.uniform(140, 200), 2)
            weight = round(random.uniform(50, 120), 2)
            writer.writerow({
                'Name': name,
                'Age': age,
                'Height': height,
                'Weight': weight
            })
            data['age'].append(age)
            data['height'].append(height)
            data['weight'].append(weight)

    average_age = mean(data['age'])
    average_height = mean(data['height'])
    average_weight = mean(data['weight'])

    writer.writerow({
        'Name': 'Average',
        'Age': average_age,
        'Height': average_height,
        'Weight': average_weight
    })

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
