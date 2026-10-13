# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Create a list to store the scraped data
    scraped_data = []
    # Open the URL and read the HTML
    with urllib.request.urlopen(url) as response:
        soup = BeautifulSoup(response.read(), features="lxml")
    # Find the table containing the desired data
    table = soup.find('table', {'class': 'my-table'})
    # Iterate over the rows of the table
    for row in table.find_all('tr'):
        # Iterate over the cells of the row
        cells = row.find_all('td')
        # Check if the row contains the desired data
        if all(cell.text.strip() for cell in cells):
            # Extract the text from each cell and add it to the list
            scraped_data.append([cell.text.strip() for cell in cells])
    # Write the scraped data to a CSV file
    with open(CSV_FILE_PATH, 'a', newline='') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerows(scraped_data)
    return CSV_FILE_PATH

