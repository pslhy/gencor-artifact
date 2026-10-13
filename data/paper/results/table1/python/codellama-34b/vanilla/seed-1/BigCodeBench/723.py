from datetime import timedelta
import urllib.request
from bs4 import BeautifulSoup
import csv
import os
# Constants
CSV_FILE_PATH = 'scraped_data.csv'
def task_func(url):
    # Configure headers to prevent 403 errors
    headers = {
        "accept-language": "en-US,en;q=0.9",
        "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x664) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3551.0 Safari/537.36",  # pylint: disable='C0301'
    }
    # Configure the request with the given URL and headers
    req = urllib.request.Request(
        url, 
        data=None, 
        headers=headers, 
        method="GET", 
        mode="no-cors", 
        credentials="same-origin",  # Include cookies from the request origin
        cache="default",  # Standard browser cache behavior
        allow_redirects=True,  # Allow for redirects (e.g. /login -> /login/form.php)
    )
    # Send the request and get the response
    resp = urllib.request.urlopen(req).read().decode('utf-8')
    if resp.status_code == 200:
        # Parse the HTML response using BeautifulSoup
        soup = BeautifulSoup(resp, "html.parser")
        # Extract the data using the chosen technique
        data = []
        for row in soup.find_all("tr"):
            data.append([cell.text.strip() for cell in row.find_all("td")])
        # Create a dictionary to store the extracted data
        scraped_data = {
            "headers": row.text.strip() for row in soup.find_all("th")
        }
        # Append the scraped data to the CSV file
        with open(CSV_FILE_PATH, "w", newline="", encoding="utf-8") as file:
            writer = csv.writer(file)
            writer.writerow(scraped_data.keys())
            writer.writerows(scraped_data.values())
        return CSV_FILE_PATH
    else:
        # Handle invalid status codes
        raise Exception(f"Invalid status code: {resp.status_code}")
input_url = [
    "https://www.example.com/table",
    "https://www.example.com/another-table",
    # And so on
]

results = []
for url in input_url:
    results.append(task_func(url))

print(results)


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
