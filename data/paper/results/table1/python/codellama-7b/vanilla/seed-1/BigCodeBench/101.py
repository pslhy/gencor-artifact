from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Fetching and processing the data
    data = pd.read_csv(data_url)
    data = data.rename(columns={"RM": "median_rooms"})
    data = data.drop(columns=["CRIM", "NOX"])
    target = data.pop("PRICE")
    
    # Saving the correlation heatmap to a file
    with pd.option_context("display.max_rows", None, "display.max_columns", None):
        heatmap = sns.heatmap(data.corr(), annot=True, cmap="coolwarm")
        plt.tight_layout()
        plt.savefig("correlation_heatmap.png")
        plt.close()
        return heatmap
    except(ValueError):
        print("Error in generating or saving the plot")


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
