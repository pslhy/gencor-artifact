from datetime import timedelta
import matplotlib.pyplot as plt
import pandas as pd
import seaborn as sns
import numpy as np
def task_func(data_url="http://lib.stat.cmu.edu/datasets/boston", seed=42):
    # Provide the url of the dataset and the seed to be used
    # Load the dataset into a pandas DataFrame
    df = pd.read_csv(data_url)
    
    # Set the seed for reproducibility
    np.random.seed(seed)
    
    # Create a train-test split of the dataset
    train, test = train_test_split(df, test_size=0.2, random_state=42)
    
    # Generate a heatmap of the correlations between the features in the train and test datasets
    fig, ax = plt.subplots()
    sns.heatmap(train.corr(), annot=True, cmap='coolwarm', ax=ax)
    plt.show()
    
    return ax


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
