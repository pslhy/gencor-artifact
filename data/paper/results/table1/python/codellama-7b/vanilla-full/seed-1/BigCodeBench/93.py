from datetime import timedelta
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
def task_func(data, n_components=2):
    # Check if n_components is a positive integer
    if not isinstance(n_components, int) or n_components <= 0:
        raise ValueError("n_components must be a positive integer")

    # Perform PCA on the data
    pca = PCA(n_components=n_components)
    X_pca = pca.fit_transform(data)

    # Create a DataFrame of the transformed data
    df_pca = pd.DataFrame(X_pca, index=data.index, columns=['PCA_{}'.format(i) for i in range(n_components)])

    # Scatter plot of the transformed data
    fig, ax = plt.subplots(figsize=(12, 6))
    ax.scatter(df_pca['PCA_0'], df_pca['PCA_1'], alpha=0.5)
    ax.set_xlabel('Principal Component 1')
    ax.set_ylabel('Principal Component 2')
    ax.set_title('Scatter Plot of Transformed Data')
    ax.grid(True)

    return df_pca, ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Perform Principal Component Analysis (PCA) on a dataset and record the result. Also, generates a scatter plot of the transformed data.
#     The function should raise the exception for: ValueError: If n_components is not a positive integer.
#     The function should output with:
#         DataFrame: The transformed data with principal components.
#         Axes: The matplotlib Axes object containing the scatter plot.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     import pandas as pd
#     import matplotlib.pyplot as plt
#     from sklearn.decomposition import PCA
#     def task_func(data, n_components=2):
#     ```
