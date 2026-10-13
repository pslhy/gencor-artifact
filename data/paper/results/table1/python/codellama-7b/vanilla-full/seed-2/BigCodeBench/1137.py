from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    # Make the request to the URL
    response = requests.get(url)

    # Parse the HTML content using BeautifulSoup
    soup = bs4.BeautifulSoup(response.content, 'html.parser')

    # Find all phone numbers on the page
    phone_numbers = soup.find_all('span', {'class': 'phoneNumber'})

    # Extract the phone numbers from the HTML elements
    extracted_numbers = [re.search(r'[^0-9]', number.text).group() for number in phone_numbers]

    # Write the phone numbers to a JSON file
    with open(output_path, 'w') as json_file:
        json.dump(extracted_numbers, json_file)

    return extracted_numbers

# Example usage:
url = 'https://www.example.com'
output_path = 'phone_numbers.json'
task_func(url, output_path)

# Load the JSON file and print the phone numbers
with open(output_path, 'r') as json_file:
    phone_numbers = json.load(json_file)
    for phone_number in phone_numbers:
        print(phone_number)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Extracts phone numbers from a given URL or local file and saves them to a specified file in JSON format.
#     The function should output with:
#         list: A list of strings, each representing a found phone number.
#     You should write self-contained code starting with:
#     ```
#     import bs4
#     import requests
#     import re
#     import json
#     def task_func(url: str, output_path: str) -> list:
#     ```
