from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Fetch the HTML content from the URL
    with urllib.request.urlopen(url) as response:
        html_content = response.read()

    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(html_content, 'html.parser')

    # Extract data from the parsed HTML
    rows = []
    for row in soup.find_all('tr'):
        columns = row.find_all('td')
        columns = [ele.text.strip() for ele in columns]
        rows.append([ele for ele in columns if ele])

    # Write the scraped data to a CSV file
    with open(CSV_FILE_PATH, 'w', newline='', encoding='utf-8') as file:
        writer = csv.writer(file)
        writer.writerows(rows)

    # Return the path of the CSV file
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
