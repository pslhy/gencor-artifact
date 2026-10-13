
from datetime import timedelta
import bs4
import requests
import re
import json
def task_func(url: str, output_path: str) -> list:
  # extract domain from provided URL
  domain = url.split("/")[2]
  # download HTML content from URL using the requests API
  html = requests.get(url).text
  # use BeautifulSoup to parse HTML document
  soup = bs4.BeautifulSoup(html, "html.parser")
  # use Regex to find phone numbers within the HTML document
  phone_numbers = re.findall(r"\d{3}-\d{3}-\d{4}", soup.text)
  # create an empty list to store the found phone numbers
  found_phone_numbers = []
  # append the phone numbers to the list
  for phone_number in phone_numbers:
      found_phone_numbers.append(phone_number)
  # create an empty dictionary to store the found phone numbers
  phone_number_dict = {}
  # Create the dictionary keys and values for the phone numbers
  phone_number_dict["domain"] = domain
  phone_number_dict["phones"] = found_phone_numbers
  # create a set of valid URLs
  valid_urls = []
  # Add the domain name to the valid URLs set
  valid_urls.append(domain)
  # open the output file in 'a' mode (append) using the 'with' context manager
  with open(output_path, "a") as f:
      # write the phone number dictionary to the output file in JSON format
      f.write(json.dumps(phone_number_dict))
  return found_phone_numbers


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
