from datetime import timedelta
import pandas as pd
import json
import os
import shutil
def task_func(path):
    # create "processed" subdirectory if it does not exist
    if not os.path.exists(os.path.join(path, 'processed')):
        os.makedirs(os.path.join(path, 'processed'))

    # read the json files, convert them into dataframes and add a source column
    files = [f for f in os.listdir(path) if f.endswith('.json')]
    files.sort() # sort the files before processing
    dfs = []
    for file in files:
        with open(os.path.join(path, file)) as f:
            data = json.load(f)
            df = pd.json_normalize(data)
            df['Source'] = file
            dfs.append(df)

        # move the processed file to the "processed" subdirectory
        shutil.move(os.path.join(path, file), os.path.join(path, 'processed', file))

    # concatenate all dataframes
    df = pd.concat(dfs)

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
