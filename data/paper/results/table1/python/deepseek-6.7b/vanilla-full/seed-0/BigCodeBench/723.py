from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Open URL and read data
    with urllib.request.urlopen(url) as response:
        html = response.read()

    # Parse HTML with BeautifulSoup
    soup = BeautifulSoup(html)

    # Get titles of columns from table
    table = soup.find_all('table')[0] 
    headers = [header.text for header in table.find_all('th')]

    # Get table rows
    rows = table.find_all('tr')
    data = []
    for row in rows:
        cols = row.find_all('td')
        cols = [col.text for col in cols]
        data.append([ele for ele in cols if ele])  # Remove empty values

    # Save data to CSV file
    with open(CSV_FILE_PATH, 'w') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(headers)  # Write headers
        writer.writerows(data)  # Write data

    return CSV_FILE_PATH


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Scrape data from a given URL and save the scraped data to a CSV file.
#     The function should output with:
#         CSV_FILE_PATH (str): The path of the CSV file where the scraped data is saved.
#     You should write self-contained code starting with:
#     ```
#     import urllib.request
#     from bs4 import BeautifulSoup
#     import csv
#     import os
#     # Constants
#     CSV_FILE_PATH = 'scraped_data.csv'
#     def task_func(url):
#     ```
