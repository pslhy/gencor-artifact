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
    # Send a request to the URL
    response = requests.get(url)

    # Parse the HTML content of the page
    soup = BeautifulSoup(response.content, "html.parser")

    # Find all the hyperlinks on the page
    links = soup.find_all("a")

    # Create a set to store unique URLs
    unique_urls = set()

    # Iterate over the links and add each URL to the set
    for link in links:
        absolute_url = urljoin(base_url, link.get("href"))
        unique_urls.add(absolute_url)

    # Open the output CSV file
    with open(csv_file, "w", newline="") as csvfile:
        csvwriter = csv.writer(csvfile)

        # Write the URLs to the CSV file
        for url in unique_urls:
            csvwriter.writerow([url])

    # Return the number of unique URLs found
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
