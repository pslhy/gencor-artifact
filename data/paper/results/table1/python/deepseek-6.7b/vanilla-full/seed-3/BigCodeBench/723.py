from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # List to store scraped data
    data = []

    # Makes a request to the specified url and obtains the html text
    response = urllib.request.urlopen(url)
    html = response.read()

    # Parse the html text with BeautifulSoup
    soup = BeautifulSoup(html, 'html.parser')

    # scrape data from the page
    for tr in soup.find_all('tr'):
        row = []  # list to store each row's data
        for td in tr.find_all('td'):
            row.append(td.text.strip())
        data.append(row)

    # Save scraped data to a CSV file
    with open(CSV_FILE_PATH, 'w', newline='') as file:
        writer = csv.writer(file)
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
