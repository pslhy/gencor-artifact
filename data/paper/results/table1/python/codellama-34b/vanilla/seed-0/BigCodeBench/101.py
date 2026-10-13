from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):

    # Load the Boston Housing dataset
    housing = pd.read_csv(data_url, skipfooter=1, usecols=["LSTAT", "INDUS", "NOX", "RM", "AGE", "DIS", "RAD", "TAX", "PTRATIO", "B", "ZN", "CHAS", "log_price"])

    # Customize the Seaborn formatting
    sns.set(style="whitegrid", rc={"figure.figsize":(20,10)})

    # Create the heatmap plot
    map1 = sns.heatmap(data=housing.corr(), annot=True, cmap="RdBu_r", vmin=-1, vmax=1, center=0, square=True)
    map1.set_xticklabels(housing.columns, rotation=90)
    map1.set_yticklabels(housing.columns)
    map1.set_title("Correlation Heatmap of Boston Housing Dataset")
    map1.set_xlabel("Columns")
    map1.set_ylabel("Rows")
    plt.tight_layout()

    # Retrieve the Axes object containing the heatmap
    axes = map1.axes

    # Return the Axes object
    return axes


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
