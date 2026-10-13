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

    # Send request to the URL and get the response
    response = requests.get(url)

    # Parse the HTML content using BeautifulSoup
    soup = BeautifulSoup(response.content, "html.parser")

    # Initialize the list to store the unique URLs
    unique_urls = []

    # Iterate over the links in the HTML content
    for link in soup.find_all("a"):
        # Get the absolute URL of the link
        abs_url = urljoin(base_url, link.get("href"))

        # Add the URL to the list if it's not in the list already
        if abs_url not in unique_urls:
            unique_urls.append(abs_url)

    # Write the list of unique URLs to a CSV file
    with open(csv_file, "w") as f:
        writer = csv.writer(f)
        writer.writerow(unique_urls)

    return len(unique_urls)


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
