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
    # Make GET request to web page
    response = requests.get(url)
    if response.status_code != 200:
        raise ValueError(f"Failed to retrieve {url}")
    soup = BeautifulSoup(response.text, "html.parser")

    # Find all links on web page
    links = soup.find_all("a")

    # Extract URLs from links
    url_list = []
    for link in links:
        url = link.get("href")
        if url and not url.startswith(("javascript:", "#")):
            url = urljoin(base_url, url)
            url_list.append(url)

    # Remove duplicates
    url_set = set(url_list)

    # Write to CSV file
    with open(csv_file, "w", newline="") as csvfile:
        writer = csv.writer(csvfile)
        for url in url_set:
            writer.writerow([url])

    return len(url_set)


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
