from datetime import timedelta
import urllib.request
from pyquery import PyQuery as pq
from datetime import datetime
import pandas as pd
def task_func(url):
    fetch_time = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    if url.strip() == "":
        raise ValueError('URL Is Empty')
    
    try:
        r = urllib.request.urlopen(url)
    except urllib.error.URLError as e:
        raise urllib.error.URLError(str(e))

    html = r.read().decode('utf-8')
    d = pq(html)

    data = []
    for a in d('a'):
        text = a.text if a.text else "No Text"
        href = a.attrib['href'] if 'href' in a.attrib else "No href"
        data.append({'text': text, 'href': href, 'fetch_time': fetch_time})
        
    df = pd.DataFrame(data)
    return df


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
