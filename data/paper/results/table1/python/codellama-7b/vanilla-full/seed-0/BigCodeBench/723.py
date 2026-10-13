from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Define the scraper function
    def scrape_url(url):
        # Open the URL and get the HTML content
        response = urllib.request.urlopen(url)
        soup = BeautifulSoup(response, 'html.parser')
        # Extract the desired data from the HTML
        data = []
        for article in soup.find_all('article'):
            title = article.find('h1').text.strip()
            date = article.find('span', {'class': 'date'}).text.strip()
            try:
                price = article.find('span', {'class': 'price'}).text.strip()
            except:
                price = None
            data.append((title, date, price))
        return data
    # Scrape the URL and save the data to a CSV file
    scraper = scrape_url(url)
    with open(CSV_FILE_PATH, 'a', newline='', encoding='utf-8') as csvfile:
        fieldnames = ['title', 'date', 'price']
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
        writer.writeheader()
        for row in scraper:
            writer.writerow(row)
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
