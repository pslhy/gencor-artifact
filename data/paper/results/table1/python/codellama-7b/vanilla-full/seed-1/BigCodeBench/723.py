from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Fetch HTML page
    response = urllib.request.urlopen(url)
    html_page = response.read()
    soup = BeautifulSoup(html_page, 'html.parser')
    
    # Extract data
    data = []
    for table in soup.find_all('table'):
        for row in table.find_all('tr'):
            cols = [cell.text.strip() for cell in row.find_all('td')]
            data.append([dt.date() for dt in cols[1:-2]])
    
    # Write data to CSV file
    with open(CSV_FILE_PATH, 'w', newline='', encoding='utf-8') as csvfile:
        writer = csv.writer(csvfile)
        writer.writerows(data)

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
