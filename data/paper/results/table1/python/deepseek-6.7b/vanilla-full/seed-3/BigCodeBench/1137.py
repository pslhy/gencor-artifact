from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    phone_numbers = []
    
    if "http" in url:
        response = requests.get(url)
        soup = bs4.BeautifulSoup(response.text, 'html.parser')
        phone_numbers = re.findall(r'\(?\d{2,4}?\)?[-. ]?\d{2,4}[-. ]?\d{2,4}[-. ]?\d{0,9}', soup.text)  
    else:
        with open(url, 'r') as file:
            soup = bs4.BeautifulSoup(file.read(), 'html.parser')
            phone_numbers = re.findall(r'\(?\d{2,4}?\)?[-. ]?\d{2,4}[-. ]?\d{2,4}[-. ]?\d{0,9}', soup.text) 

    with open(output_path, 'w') as file:
        json.dump(phone_numbers, file)

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
