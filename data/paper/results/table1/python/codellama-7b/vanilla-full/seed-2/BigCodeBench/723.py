from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Create the CSV file if it doesn't exist already
    if not os.path.exists(CSV_FILE_PATH):
        with open(CSV_FILE_PATH, 'w', newline='') as csvfile:
            fieldnames = ['url', 'title', 'content']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()

    # Fetch the HTML content from the URL
    response = urllib.request.urlopen(url)
    html = response.read()

    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(html, 'html.parser')

    # Extract the URL, title, and content from the HTML
    url = soup.find('link', attrs={'rel': 'canonical'})['href']
    title = soup.find('title').text
    content = soup.find('p').text

    # Write the scraped data to the CSV file
    with open(CSV_FILE_PATH, 'a', newline='') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=['url', 'title', 'content'])
        writer.writerow({'url': url, 'title': title, 'content': content})

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
