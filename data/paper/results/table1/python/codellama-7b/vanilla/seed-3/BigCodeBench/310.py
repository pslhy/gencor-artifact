from datetime import timedelta
import os
import csv
import random
from statistics import mean
# Constants
COLUMNS = ['Name', 'Age', 'Height', 'Weight']
PEOPLE_COUNT = 100
def task_func(filename):
    # Create CSV file
    with open(filename, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=COLUMNS)
        writer.writeheader()

        # Generate simulated data
        for i in range(PEOPLE_COUNT):
            writer.writerow({
                'Name': f"Name {i}",
                'Age': random.randint(18, 60),
                'Height': random.uniform(100, 200),
                'Weight': random.uniform(50, 200)
            })

    # Calculate and append averages to CSV file
    with open(filename, 'a', newline='', encoding='utf-8') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['Average Age', 'Average Height', 'Average Weight'])
        writer.writerow({
            'Average Age': mean(x['Age'] for x in reader),
            'Average Height': mean(x['Height'] for x in reader),
            'Average Weight': mean(x['Weight'] for x in reader)
        })

    return filename

# Get current directory
curr_dir = os.path.dirname(__file__)

# Generate random csv file name
file_name = f"{curr_dir}/{uuid.uuid4().hex}.csv"

# Call function and return file path
return task_func(file_name)


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
