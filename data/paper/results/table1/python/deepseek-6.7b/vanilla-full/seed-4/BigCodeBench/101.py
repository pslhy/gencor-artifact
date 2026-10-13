from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    try:
        np.random.seed(seed)
    except Exception as e:
        raise ValueError("Error in seeding the random number generator:", str(e))

    try:
        data = pd.read_csv(data_url, sep='\s+', skiprows=22, header=None)
        column_names = ['CRIM', 'ZN', 'INDUS', 'CHAS', 'NOX', 'RM', 'AGE', 'DIS', 'RAD', 'TAX', 'PTRATIO', 'B', 'LSTAT', 'MEDV']
        df = pd.DataFrame(data, columns=column_names)
    except Exception as e:
        raise ValueError("Error in loading data:", str(e))

    try:
        corr = df.corr()
        fig, ax = plt.subplots(figsize=(10, 10))
        sns.heatmap(corr, annot=True, cmap='coolwarm', fmt='.2f', cbar=True, square=True, ax=ax)
        plt.show()
        plt.savefig("corr_heatmap.png")
    except Exception as e:
        raise ValueError("Error in generating heatmap:", str(e))

    return ax

task_func()


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
