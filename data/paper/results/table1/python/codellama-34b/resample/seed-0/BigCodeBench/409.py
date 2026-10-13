# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Calculate the mean, median, and standard deviation of the data from a specific column in an Excel file.
#     The function should raise the exception for: FileNotFoundError: If the Excel file does not exist at the specified path. ValueError: If the specified column is not found in the Excel file.
#     The function should output with:
#         dict: A dictionary with the mean, median, and standard deviation.
#     You should write self-contained code starting with:
#     ```
#     import os
#     import pandas as pd
#     import numpy as np
#     def task_func(excel_file_path, file_name, column_name):
#     ```
from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):

    if not os.path.isFile(filename):
        raise ValueError("Invalid file path")

    try:
        df = pd.reader_excel(filename)
        data = df[column_name].values

        stats = {"mean": np.mean(data), "median": np.median(data), "std": np.std(data)}
        return stats
        
    except KeyError:
        raise ValueError(column_name + " column not found")

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:7:20: undefined module member 'os.path.isFile'
#     - <python>:7:27: undefined name 'filename'
#     - <python>:11:17: undefined module member 'pd.reader_excel'
#     - <python>:11:30: undefined name 'filename'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):

  if not os.path.isfile(excel_file_path):
      raise ValueError("Invalid file path")

  df = pd.read_excel(filename)
  data = df[column_name].values

  stats = {"mean": np.mean(data), "median": np.median(data), "std": np.std(data)}

  return stats

# === Turn 3 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:10:22: undefined name 'filename'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import os
import pandas as pd
import numpy as np
def task_func(excel_file_path, file_name, column_name):

  if not os.path.isfile(excel_file_path):
      raise ValueError("Invalid file path")

  df = pd.read_excel(excel_file_path)
  data = df[column_name].values

  stats = {"mean": np.mean(data), "median": np.median(data), "std": np.std(data)}

  return stats

