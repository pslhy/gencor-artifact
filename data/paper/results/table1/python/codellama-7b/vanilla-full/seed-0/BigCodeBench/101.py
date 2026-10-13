from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):

    # Download and read the data
    df = pd.read_csv(data_url)

    # Convert the data to numeric
    df = df.apply(pd.to_numeric, args=('coerce',))

    # Calculate the correlation matrix
    corr = df.corr()

    # Generate the heatmap plot
    sns.heatmap(corr, cmap='coolwarm', annot=True, square=True, linewidths=0.5, xticklabels=False, yticklabels=False)
    
    # Save the plot to a specified file
    plt.savefig('heatmap.png')

    # Return the Axes object
    return plt.gca()


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
