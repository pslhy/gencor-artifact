from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    try:
        # Load the dataset from URL
        boston = pd.read_csv(data_url, sep='\s+', header=None, skiprows=1)
        boston.columns = ['CRIM', 'ZN', 'INDUS', 'CHAS', 'NOX', 'RM', 'AGE', 'DIS', 'RAD', 'TAX', 'PTRATIO', 'B', 'LSTAT', 'MEDV']
        
        # Correlation matrix
        corr = boston.corr()
        
        # Seaborn heatmap
        plt.figure(figsize=(10, 8))
        heatmap = sns.heatmap(corr, annot=True, cmap='coolwarm', center=0, fmt='.2f')
        
        # Saving the plot to a specified file if a file_name is provided
        if isinstance(data_url, str):
            file_type = data_url.split('.')[-1]
            if file_type == 'png':
                plt.savefig(data_url)
            else:
                raise ValueError("Unsupported file type. Only 'png' is supported.")
        
        return heatmap
    
    except Exception as e:
        raise ValueError(f"Errored out when trying to generate or save the plot. Error: {e}")


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Draw the correlation heatmap of the Boston Housing dataset using Seaborn, with an option to save it to a specified file.
#     The function should raise the exception for: ValueError: If an error occurs in generating or saving the plot.
#     The function should output with:
#         matplotlib.axes.Axes: The Axes object containing the heatmap plot.
#     You should write self-contained code starting with:
#     ```
#     import matplotlib.pyplot as plt
#     import pandas as pd
#     import seaborn as sns
#     import numpy as np
#     def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
#     ```
