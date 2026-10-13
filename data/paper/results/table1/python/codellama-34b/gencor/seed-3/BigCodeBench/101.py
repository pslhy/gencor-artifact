import fileinput

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
    train, test = np.split(df, 0.8)
    
    # Create a list of features to use
    features = ['crim', 'indus', 'tax', 'ptratio', 'medv']
    
    # Create a correlation heatmap using Seaborn
    sns.heatmap(df[features].corr(), square=True, annot=True)
    
    # Add a title to the plot
    plt.title('Correlation Heatmap of the Boston Housing Dataset')
    
    # Save the plot to a file, if required
    if fileinput.filename():
        plt.savefig(fileinput.filename(), bbox_inches='tight')
    
    # show the plot
    plt.show()
    
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
