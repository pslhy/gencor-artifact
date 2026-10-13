# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Create and delete a CSV file "task_func_data/Output.txt" with sensor data for temperature and humidity. The data is generated randomly, written in append mode, and the file is deleted after use.
#     The function should output with:
#         Returns the path to the CSV file "task_func_data/Output.txt" before deletion.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import csv
#     import random
#     from datetime import datetime
#     def task_func():
#     ```
from datetime import timedelta
import os
import csv
import random
from datetime import datetime
def task_func():
  # generate sensor data
  TEMP_MIN = 20
  TEMP_MAX = 30
  HUMI_MIN = 5
  HUMI_MAX = 10
  random_temp = random.random() * (TEMP_MAX - TEMP_MIN) + TEMP_MIN
  random_humi = random.random() * (HUMI_MAX - HUMI_MIN) + HUMI_MIN
  # create timestamp
  now = datetime.now()
  timestamp = now.strftime('%Y-%m-%dT%H:%M:%S.%fZ')
  # create output data
  out_data = {
      'timestamp': timestamp,
      'temp': random_temp,
      'humi': random_humi
  }
  # create output file
  csv_path = 'task_func_data/Output.txt'
  # append data to output file
  with open(csv_path, 'a', encoding='utf-8', newline='') as csvfile:
      writer = csv.DictWriter(csvfile, fieldnames=out_data.keys())
      writer.writerow(out_data)
  # return path to output file
  return csv_path

