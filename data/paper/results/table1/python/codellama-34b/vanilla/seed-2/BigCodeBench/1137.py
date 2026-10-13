from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    """
    Extracts phone numbers from a given URL or local file and saves them to a specified file in JSON format.

    Parameters:
        url (str): URL or file path to extract phone numbers from
        output_path (str): Path to save extracted phone numbers to

    Returns:
        list: A list of strings representing extracted phone numbers.
    """

    # Make request and establish HTML soup
    response = requests.get(url)
    soup = bs4.BeautifulSoup(response.text, 'lxml')

    # Compile RegEx pattern for phone numbers
    phone_number_pattern = re.compile(r'\d{3}-\d{3}-\d{4}')

    # Extract phone numbers from HTML soup
    phone_numbers = []
    for element in soup.find_all(text=phone_number_pattern):
        phone_numbers.append(phone_number_pattern.search(element))

    # Save extracted phone numbers to output file
    with open(output_path, 'w') as outfile:
        json.dump(phone_numbers, outfile)

    # Return list of extracted phone numbers
    return phone_numbers


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
