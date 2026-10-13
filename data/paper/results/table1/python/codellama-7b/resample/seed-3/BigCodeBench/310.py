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

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:28:51: undefined name 'reader'
#     - <python>:29:57: undefined name 'reader'
#     - <python>:30:57: undefined name 'reader'
#     - <python>:39:27: undefined name 'uuid'
#     Please regenerate the code, taking these errors into account.
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
            'Average Age': mean(row['Age'] for row in reader),
            'Average Height': mean(row['Height'] for row in reader),
            'Average Weight': mean(row['Weight'] for row in reader)
        })

    return filename

# Get current directory
curr_dir = os.path.dirname(__file__)

# Generate random csv file name
file_name = f"{curr_dir}/{uuid.uuid4().hex}.csv"

# Call function and return file path
task_func(file_name)

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:28:55: undefined name 'reader'
#     - <python>:29:61: undefined name 'reader'
#     - <python>:30:61: undefined name 'reader'
#     - <python>:39:27: undefined name 'uuid'
#     Please regenerate the code, taking these errors into account.
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
        reader = csv.reader(csvfile)
        ages = list(reader)
        heights = list(reader)
        weights = list(reader)
        average_age = mean(ages)
        average_height = mean(heights)
        average_weight = mean(weights)
        writer = csv.DictWriter(csvfile, fieldnames=['Average Age', 'Average Height', 'Average Weight'])
        writer.writerow({
            'Average Age': average_age,
            'Average Height': average_height,
            'Average Weight': average_weight
        })

    return filename

# Get current directory
curr_dir = os.path.dirname(__file__)

# Generate random csv file name
file_name = f"{curr_dir}/{uuid.uuid4().hex}.csv"

# Call function and return file path
task_func(file_name)

# === Turn 4 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:46:27: undefined name 'uuid'
#     Please regenerate the code, taking these errors into account.
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
        reader = csv.reader(csvfile)
        ages = list(reader)
        heights = list(reader)
        weights = list(reader)
        average_age = mean(ages)
        average_height = mean(heights)
        average_weight = mean(weights)
        writer = csv.DictWriter(csvfile, fieldnames=['Average Age', 'Average Height', 'Average Weight'])
        writer.writerow({
            'Average Age': average_age,
            'Average Height': average_height,
            'Average Weight': average_weight
        })

    return filename

# Get current directory
curr_dir = os.path.dirname(__file__)

# Generate random csv file name
file_name = f"{curr_dir}/{uuid.uuid4().hex}.csv"

# Call function and return file path
task_func(file_name)

# === Turn 5 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:46:27: undefined name 'uuid'
#     Please regenerate the code, taking these errors into account.
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
                'Name': f"Person {i}",
                'Age': random.randint(18, 60),
                'Height': random.uniform(100, 200),
                'Weight': random.uniform(50, 200)
            })

    # Calculate and append averages to CSV file
    with open(filename, 'a', newline='', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile)
        ages = list(reader)
        heights = list(reader)
        weights = list(reader)
        average_age = mean(ages)
        average_height = mean(heights)
        average_weight = mean(weights)
        writer = csv.DictWriter(csvfile, fieldnames=['Average Age', 'Average Height', 'Average Weight'])
        writer.writerow({
            'Average Age': average_age,
            'Average Height': average_height,
            'Average Weight': average_weight
        })

    return filename

# Get current directory
curr_dir = os.path.dirname(__file__)

# Generate random csv file name
file_name = f"{curr_dir}/data_{os.getpid()}.csv"

# Call function and return file path
task_func(file_name)

