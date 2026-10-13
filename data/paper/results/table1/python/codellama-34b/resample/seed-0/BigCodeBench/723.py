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

    def save_data():
        data = {
            'title': title,  # noqa: F821
            'type': 'reader comments'
        }
        with open(CSV_FILE_PATH, 'a', encoding='UTF8', newline='') as f:
            writer.writerow(data.values())
    
    try:
        if not os.path.exists(CSV_FILE_PATH):
            create(CSV_FILE_PATH)
    except Exception as e:
        raise e
    
    response = urllib.request.urlopen(url)
    soup = BeautifulSoup(response.read(), 'html.parser')
    title = soup.title.text.strip()
    content = soup.find('p', {'class': 'content'}).text.strip()
    save_data()
    return CSV_FILE_PATH

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:16:13: undefined name 'writer'
#     - <python>:20:13: undefined name 'create'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Create CSV file if it doesn't exist
    if not os.path.exists(CSV_FILE_PATH):
        open(CSV_FILE_PATH, 'w', encoding='UTF8', newline='')
    
    # Get HTML response
    req = urllib.request.Request(url,headers={'User-Agent': 'Mozilla/5.0'})
    response = urllib.request.urlopen(req)
    html = response.read().decode('utf-8')
    # Scrape data from HTML
    soup = BeautifulSoup(html, 'html.parser')
    title = soup.title.text.strip()
    content = soup.find('p', {'class': 'content'}).text.strip()
    # Save data to CSV
    with open(CSV_FILE_PATH, 'a', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)
        writer.writerow([title, content])
    
    return CSV_FILE_PATH

