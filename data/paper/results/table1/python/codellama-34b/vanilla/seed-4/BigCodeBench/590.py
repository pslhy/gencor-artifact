from datetime import timedelta
import urllib.request
from pyquery import PyQuery as pq
from datetime import datetime
import pandas as pd
def task_func(url):
  try:
    if url == '':
      raise ValueError('URL is empty!')
    elif url.startswith('https://') == False and url.startswith('http://') == False:
      raise ValueError('URL is invalid!')
    else:
      fetch_time = datetime.now()
      with urllib.request.urlopen(url) as response:
        result = response.read()
  except ValueError as error:
    raise ValueError(error)
  except URLError as error:
    raise URLError(error)
 
  text_list = []
  href_list = []
  for element in pq(result)('a'):
    text_list.append(element.text)
    href_list.append(element.attr('href'))
  
  result_df = pd.DataFrame({'text': text_list, 'href': href_list, 'fetch_time': timedelta(fetch_time, datetime.now())})
  
  return result_df



# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Extracts the text and href attributes of all anchor tags from a given URL's HTML content, and returns this data in a pandas DataFrame along with the time of data extraction.
#     Note that: The function requires internet connectivity to fetch HTML content.
#     The function should raise the exception for: ValueError: If the provided URL is invalid or empty. URLError: If there is an issue with network connectivity or the server.
#     The function should output with:
#         pandas.DataFrame: A DataFrame with columns 'text', 'href', and 'fetch_time'. Each row
#         corresponds to an anchor tag in the HTML, with 'text' and 'href' containing
#         the text and the hyperlink reference of the anchor tag, respectively.
#         'fetch_time' contains the timestamp of when the data was fetched in the format
#         'YYYY-MM-DD HH:MM:SS'.
#     You should write self-contained code starting with:
#     ```
#     import urllib.request
#     from pyquery import PyQuery as pq
#     from datetime import datetime
#     import pandas as pd
#     def task_func(url):
#     ```
