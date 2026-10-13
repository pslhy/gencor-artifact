from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Generate names, ensuring uniqueness
    names = set()
    while len(names) < PEOPLE_COUNT:
        name = ''.join(random.choices('abcdefghijklmnopqrstuvwxyz', k=random.randint(5, 10)))
        names.add(name)
    names = list(names)
    
    # Generate fake data
    people = []
    for _ in range(PEOPLE_COUNT):
        age = random.randint(18, 65)
        height = random.randint(140, 200)
        weight = random.randint(40, 150)
        people.append([names.pop(), age, height, weight])
    
    # Calculate averages
    avg_age = mean(person[1] for person in people)
    avg_height = mean(person[2] for person in people)
    avg_weight = mean(person[3] for person in people)
    
    # Append averages to the data
    people.append(['Average', avg_age, avg_height, avg_weight])
    
    # Write to CSV
    with open(filename, mode='w', newline='') as file:
        writer = csv.writer(file)
        writer.writerow(COLUMNS)
        writer.writerows(people)
    
    # Return the path of the created file
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
