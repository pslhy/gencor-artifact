from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Set headers
    headers = {
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36'
    }
    # Open and read HTML page
    response = urllib.request.urlopen(url, headers=headers)
    soup = BeautifulSoup(response.read(), 'html.parser')

    # Extract data from HTML
    data = []
    for table in soup.find_all('table', class_='table table-striped'):
        for row in table.find_all('tr'):
            cells = row.find_all('td')
            data.append([cell.text.strip() for cell in cells])
    
    # Write data to CSV file
    if os.path.exists(CSV_FILE_PATH):
        mode = 'a'
    else:
        mode = 'w'
    with open(CSV_FILE_PATH, mode, newline='') as csv_file:
        writer = csv.writer(csv_file)
        writer.writerow(['pageload_time', 'entry_url', 'data'])
        for row_data in data:
            writer.writerow(row_data)

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
