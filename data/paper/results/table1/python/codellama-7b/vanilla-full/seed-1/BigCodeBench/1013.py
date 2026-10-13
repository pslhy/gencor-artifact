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
    # Fetch webpage and parse HTML content
    response = requests.get(url)
    soup = BeautifulSoup(response.content, "html.parser")
    
    # Extract all hyperlinks from the webpage
    links = soup.find_all("a")
    
    # Join base URL with relative links to form absolute URLs
    absolute_links = [urljoin(base_url, link["href"]) for link in links]
    
    # Remove duplicate links and empty strings
    unique_links = set(absolute_links) - {""}
    
    # Write unique links to CSV file
    with open(csv_file, "w") as f:
        writer = csv.writer(f)
        writer.writerow(["URL"])
        for link in unique_links:
            writer.writerow([link])
    
    # Output the number of unique absolute links scraped
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
