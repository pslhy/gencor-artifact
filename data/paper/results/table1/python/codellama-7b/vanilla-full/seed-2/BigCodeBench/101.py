from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Read the data
    data = pd.read_csv(data_url)

    # Create a copy of the data with a sampled subset
    np.random.seed(seed)
    data_sampled = data.sample(n=100, random_state=seed)

    # Compute the correlation heatmap
    sns.set(style="white")
    corr = data_sampled.corr()
    corr_heatmap = sns.heatmap(corr, annot=True, cmap="Blues")

    # Save the heatmap to a file
    plt.savefig("boston_heatmap.png", bbox_inches="tight")

    # Return the Axes object containing the heatmap
    return corr_heatmap


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
