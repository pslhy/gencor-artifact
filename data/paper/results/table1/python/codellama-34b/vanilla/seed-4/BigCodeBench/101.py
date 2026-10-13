from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Load the Boston Housing dataset
    df = pd.read_csv(data_url)
    # Set the seed for reproducibility
    np.random.seed(seed)
    # Number of features to include in the correlation heatmap
    num_features = 5
    # Sample a random subset of features
    feature_indices = np.random.choice(list(df.columns), num_features, replace=False)
    # Compute the correlation matrix
    corr_matrix = np.corrcoef(df[feature_indices].values.T)
    # Generate the heatmap
    sns.heatmap(corr_matrix, square=True, annot=True)
    # Save the plot
    plt.savefig('boston_housing_correlation_heatmap.png')
    # Close the plot
    plt.close()
    # Return the Axes object containing the heatmap
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
