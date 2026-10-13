from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Load data
    data = pd.read_csv(data_url)

    # Create correlation matrix
    corrmat = np.corrcoef(data.values.transpose())

    # Select labels with correlation values
    labels = ['CRIM', 'ZN', 'INDUS', 'CHAS', 'NOX', 'RM', 'DIS', 'RAD', 'TAX', 'PTRATIO', 'B', 'LSTAT', 'MEDV']

    # Create heatmap
    sns.set(style="white")
    g = sns.heatmap(corrmat,linewidths=0.5)

    # Set labels
    g.set_xticklabels(labels, rotation=90, fontsize=8)
    g.set_yticklabels(labels, fontsize=8)

    # Format heatmap
    g.set_ylabel("Variable")
    g.set_xlabel("Variable")
    g.set_title("Correlation Heatmap")

    # Save figure
    plt.savefig("correlation_heatmap.pdf")

    return g


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
