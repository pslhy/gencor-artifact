from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
    def extract_phone_numbers(text):
        return re.findall(r'\b\d{3}[-.\s]?\d{3}[-.\s]?\d{4}\b', text)

    phone_numbers = set()
    
    if url.startswith('http'):
        response = requests.get(url)
        soup = bs4.BeautifulSoup(response.text, 'html.parser')
        for script in soup(["script", "style"]):
            script.extract()
        text = soup.get_text()
        phone_numbers.update(extract_phone_numbers(text))
        
        for link in soup.find_all('a', href=True):
            href = link['href']
            if href.startswith('http'):
                sub_response = requests.get(href)
                sub_soup = bs4.BeautifulSoup(sub_response.text, 'html.parser')
                for script in sub_soup(["script", "style"]):
                    script.extract()
                sub_text = sub_soup.get_text()
                phone_numbers.update(extract_phone_numbers(sub_text))
    
    else:
        with open(url, 'r') as file:
            text = file.read()
            phone_numbers.update(extract_phone_numbers(text))
    
    with open(output_path, 'w') as json_file:
        json.dump(list(phone_numbers), json_file)
    
    return list(phone_numbers)


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
