
from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Create the CSV file
    with open(filename, 'w', newline='') as csvfile:
        csv_writer = csv.writer(csvfile)
        # Write the header row
        csv_writer.writerow(COLUMNS)
        # Generate the simulated data
        for i in range(PEOPLE_COUNT):
            name = f'Person {i+1}'
            age = random.randint(18, 50)
            height = round(random.uniform(1.6, 1.95), 2)
            weight = round(random.randint(80, 150) * height, 2)
            csv_writer.writerow([name, age, height, weight])
        # Calculate and append the average values
        age_average = mean(records[1:, 1].astype(float) for records in csv_writer)
        height_average = mean(records[1:, 2].astype(float) for records in csv_writer)
        weight_average = mean(records[1:, 3].astype(float) for records in csv_writer)
        csv_writer.writerow(['Average', age_average, height_average, weight_average])
    # Return the path of the created CSV file
    return filename
# Create the CSV file with the simulated data
filename = f'people.csv'
task_func(filename)
# Print the path of the created CSV file
print(f'The file has been created at {filename}.')


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
