from datetime import timedelta
import requests
from urllib.parse import urljoin
from bs4 import BeautifulSoup
import csv
def task_func(
    url: str,
    base_url: str = "https://www.example.com",
    csv_file: str = "scraped_data.csv",
) -> int:
    # Send a request to the web page
    response = requests.get(url)
    
    # Check if the request is successful
    if response.status_code != 200:
        return 0
    
    # Create a BeautifulSoup object and specify the parser
    soup = BeautifulSoup(response.text, 'html.parser')
    
    # Find all the links on the page
    links = soup.findAll('a')
    
    # Extract the absolute URLs and remove duplicates
    absolute_urls = {urljoin(base_url, link.get('href')) for link in links}
    
    # Save the unique URLs to a CSV file
    with open(csv_file, 'w', newline='') as f:
        writer = csv.writer(f)
        for url in absolute_urls:
            writer.writerow([url])
    
    # Return the number of unique URLs
    return len(absolute_urls)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     This function scrapes a webpage for all hyperlinks and saves them as absolute URLs to a CSV file.
#     The function should output with:
#         int: The number of unique absolute links scraped from the webpage.
#     You should write self-contained code starting with:
#     ```
#     import requests
#     from urllib.parse import urljoin
#     from bs4 import BeautifulSoup
#     import csv
#     def task_func(
#         url: str,
#         base_url: str = "https://www.example.com",
#         csv_file: str = "scraped_data.csv",
#     ) -> int:
#     ```
