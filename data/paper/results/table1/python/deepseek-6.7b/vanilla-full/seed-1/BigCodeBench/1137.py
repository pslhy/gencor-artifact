from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    results = []

    try:
        if url.startswith('http'):
            response = requests.get(url)
            soup = bs4.BeautifulSoup(response.text, 'lxml')
        else:
            with open(url, 'r') as f:
                soup = bs4.BeautifulSoup(f, 'lxml')

        phone_numbers = re.findall(r'\(?\b[2-9][0-9]{2}\)?[-. ]?[2-9][0-9]{2}[-. ]?[0-9]{4}\b', soup.text)

        results = phone_numbers

        with open(output_path, 'w') as outfile:
            json.dump(results, outfile)

        return results

    except Exception as e:
        print(f'Error: {str(e)}')
        return []


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
