# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
    if file_path is not None:
        g.get_figure().savefig(file_path, bbox_inches="tight")

    # Return Axes object
    return g

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:22:8: undefined name 'file_path'
#     - <python>:23:32: undefined name 'file_path'
#     Please regenerate the code, taking these errors into account.
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
    plt.savefig('correlation_matrix.png', dpi=300)

    # Return Axes object
    return g

