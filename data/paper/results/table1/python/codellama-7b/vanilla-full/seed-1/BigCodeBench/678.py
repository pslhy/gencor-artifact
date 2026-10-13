from datetime import timedelta
import pandas as pd
import json
import os
import shutil
def task_func(path):
    # Set paths
    input_dir = os.path.join(path, 'input')
    processed_dir = os.path.join(path, 'processed')
    # Create directories if not exists
    for dir in [input_dir, processed_dir]:
        if not os.path.exists(dir):
            os.makedirs(dir)
    # Read JSON files
    json_files = [os.path.join(input_dir, f) for f in os.listdir(input_dir) if f.endswith('.json')]
    # Alphabetize JSON files
    json_files.sort()
    # Read data from JSON files and create DataFrame
    data = []
    for file in json_files:
        with open(file, 'r') as f:
            data.append(json.loads(f.read()))
    df = pd.DataFrame(data)
    # Add "Source" column to DataFrame
    df['Source'] = [os.path.basename(f) for f in json_files]
    # Move JSON files to processed directory
    for file in json_files:
        shutil.move(file, processed_dir)
    return df


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Processes JSON files in a directory. The function reads each JSON file alphabetically into a DataFrame and inserts a "Source" column that specifies the filename. The processed files are then moved to a "processed" subdirectory. The path may not exist initially.
#     The function should output with:
#         df (pandas.DataFrame): A DataFrame containing the data from all processed files.
#     You should write self-contained code starting with:
#     ```
#     import pandas as pd
#     import json
#     import os
#     import shutil
#     def task_func(path):
#     ```
