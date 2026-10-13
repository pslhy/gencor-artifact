from datetime import timedelta
import pandas as pd
import json
import os
import shutil
def task_func(path):
    # Check if path exists
    if not os.path.exists(path):
        print("Path does not exist")
        return None
    # Create output subfolder if it doesn't exist
    if not os.path.exists(os.path.join(path, "processed")):
        os.makedirs(os.path.join(path, "processed"))
    # Create DataFrame to hold all data
    df = pd.DataFrame()
    # Iterate through all files in directory
    for filename in os.listdir(path):
        file = os.path.join(path, filename)
        if os.path.isfile(file) and filename.lower().endswith("json"):
            # Read JSON file into DataFrame
            local_df = pd.read_json(file, orient='records')
            local_df.insert(0, "Source", filename)
            # Append DataFrame to overall DataFrame
            df = df.append(local_df)
            # Remove processed file from directory
            os.remove(file)
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
