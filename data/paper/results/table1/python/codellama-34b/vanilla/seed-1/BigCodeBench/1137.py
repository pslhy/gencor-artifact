from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    # Fetching URL
    response = requests.get(url)
    # Parsing response with beautiful soup
    soup = bs4.BeautifulSoup(response.content)
    
    # Regular expression for international phone numbers
    regex = r"[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}"

    # Creating regular expression pattern 
    pattern = re.compile(regex)

    # Finding all occurrences of phone numbers in URL
    phone_numbers = set(re.findall(pattern, str(soup.select('.mobile_link'))))
    if phone_numbers:
        # Convert set to list
        number_list = list(phone_numbers)
        # Create json file with list of phone_numbers
        json.dump(number_list, open(output_path, 'w'))
        print(f"Phone numbers extracted: {len(number_list)}")
    return number_list

# File path to save output
output_path = "phone_numbers.json"
# Task invocation 
task_func("https://www.example.com", output_path)


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
