from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    def generate_name():
        first_names = ['John', 'Anna', 'Mike', 'Sara', 'Paul']
        last_names = ['Doe', 'Smith', 'Johnson', 'Williams', 'Brown']
        return random.choice(first_names) + ' ' + random.choice(last_names)
    
    data = []
    total_age = 0
    total_height = 0
    total_weight = 0
    
    for _ in range(PEOPLE_COUNT):
        name = generate_name()
        age = random.randint(18, 65)
        height = random.randint(160, 200)
        weight = random.randint(50, 90)
        data.append([name, age, height, weight])
        total_age += age
        total_height += height
        total_weight += weight
    
    average_age = mean([row[1] for row in data])
    average_height = mean([row[2] for row in data])
    average_weight = mean([row[3] for row in data])
    
    data.append(['Average', average_age, average_height, average_weight])
    
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(COLUMNS)
        writer.writerows(data)
    
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
