from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Create a CSV file
    with open(CSV_FILE_PATH, 'w', newline='') as csv_file:
        fieldnames = ['title', 'date', 'content']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writeheader()

    # Fetch and parse HTML content
    response = urllib.request.urlopen(url)
    html = response.read()
    soup = BeautifulSoup(html, 'html.parser')

    # Iterate over articles
    for article in soup.find_all('article'):
        # Fetch article title, date, and content
        title = article.find('h2').text.strip()
        date = article.find('time', {'itemprop': 'datePublished'}).get('datetime')
        content = article.find('p', {'itemprop': 'articleBody'}).text.strip()

        # Write article data to CSV file
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames)
        writer.writerow({'title': title, 'date': date, 'content': content})

    # Return CSV file path
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
