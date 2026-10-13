# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
def task_func(data, n_components=2):
    # Raise exception if n_components is not a positive integer
    if not isinstance(n_componenets, int) or n_components < 1:
        raise ValueError("n_components must be a positive integer.")

    # Create a pandas DataFrame to store the transformed data
    transform_data = pd.DataFrame(index=data.index, columns=["Principal Component {0}".format(i) for i in range(n_components)])

    # Use PCA to transform the data
    pca = PCA(n_components=n_components)
    principal_components = pca.fit_transform(data)

    # Add the transformed data to the DataFrame
    for i, principal_component in enumerate(principal_components.T):
        transform_data["Principal Component {0}".format(i+1)] = principal_component

    # Create a scatter plot of the transformed data
    plt.scatter(X=transform_data.iloc[:, 0], y=transform_data.iloc[:, 1], color="blue", alpha=0.5)
    plt.xlabel("Principal Component 1")
    plt.ylabel("Principal Component 2")
    plt.title("PCA Scatter Plot (n_components={0})".format(n_components))

    
# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:8:23: undefined name 'n_componenets'
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from sklearn.decomposition import PCA
def task_func(data, n_components=2):
    # Raise exception if n_components is not a positive integer
    if not isinstance(n_components, int) or n_components < 1:
        raise ValueError("n_components must be a positive integer.")

    # Create a pandas DataFrame to store the transformed data
    transform_data = pd.DataFrame(index=data.index, columns=["Principal Component {0}".format(i) for i in range(n_components)])

    # Use PCA to transform the data
    pca = PCA(n_components=n_components)
    principal_components = pca.fit_transform(data)

    # Add the transformed data to the DataFrame
    for i, principal_component in enumerate(principal_components.T):
        transform_data["Principal Component {0}".format(i+1)] = principal_component

    # Create a scatter plot of the transformed data
    plt.scatter(X=transform_data.iloc[:, 0], y=transform_data.iloc[:, 1], color="blue", alpha=0.5)
    plt.xlabel("Principal Component 1")
    plt.ylabel("Principal Component 2")
    plt.title("PCA Scatter Plot (n_components={0})".format(n_components))
    return transform_data

