from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # URL of the webpage
    url = url

    # Query the website and return the html to the variable 'page'
    page = urllib.request.urlopen(url)

    # Parse the html using BeautifulSoup and store in variable 'soup'
    soup = BeautifulSoup(page, 'html.parser')

    # Find the first table on the webpage
    table = soup.find('table') 

    # Find all table rows
    rows = table.find_all('tr')

    # Store the data in this list
    data = []

    for tr in rows:
        td = tr.find_all('td')
        row = [i.text for i in td]   # Get text from td tags
        data.append(row)            # Append data to the list

    # Write data to csv
    with open(CSV_FILE_PATH, 'w') as csv_file:
        writer = csv.writer(csv_file)
        for row in data:
            writer.writerow(row)

    print("Scraped data saved to: ", CSV_FILE_PATH)
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
