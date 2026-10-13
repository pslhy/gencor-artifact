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
    # Initialize a set to hold the unique absolute links
    unique_links = set()

    # Send a GET request to the URL
    response = requests.get(url)
    # Parse the content using BeautifulSoup
    soup = BeautifulSoup(response.content, 'html.parser')

    # Find all <a> tags (which define hyperlinks)
    for tag in soup.find_all('a'):
        # Extract the href attribute
        href = tag.get('href')
        if href is not None:
            # If href is relative URL, join it with the base URL to get the absolute URL
            abs_url = urljoin(base_url, href)
            # Add the absolute URL to the set
            unique_links.add(abs_url)

    # Open CSV file in write mode
    with open(csv_file, 'w', newline='') as file:
        writer = csv.writer(file)
        # Write each link in a new row
        for link in unique_links:
            writer.writerow([link])

    # Return the number of unique links
    return len(unique_links)


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
