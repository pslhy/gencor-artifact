import filelock

from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Load Boston Housing dataset
    df = pd.read_csv(data_url, sep="\t", header=None)

    # Convert string columns to floats
    for col in df.columns[0:]:
        df[col] = pd.to_numeric(df[col], errors="coerce")

    # Calculate correlation between attributes
    correlation = df.corr()

    # Generate heatmap of correlation matrix
    cmap = sns.cubehelix_palette(as_cmap=True)
    g = sns.heatmap(correlation, cmap=cmap)

    # Save heatmap to file
    if filelock.endswith(".png"):
        g.savefig(filelock, dpi=300)
        plt.close()
        print("Heatmap saved to {}".format(filelock))
    else:
        raise ValueError("Filepath must end in .png")

    # Return Axes object
    return g.axes

# Test code
import pyplot as plt
import random

# Seed random for reproducibility
random.seed(42)

# Generate heatmap of Boston Housing dataset
result = task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42)

# Display heatmap
plt.show()


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
