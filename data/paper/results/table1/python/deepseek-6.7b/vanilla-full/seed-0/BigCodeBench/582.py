from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generating normally distributed random numbers
    data = np.random.normal(size=size)
    
    # Creating a figure with 1 row and 2 columns
    fig, axs = plt.subplots(1, 2, figsize=(14, 7))
    
    # Creating histogram
    axs[0].hist(data, bins=30, density=True)
    axs[0].set_title('Histogram')
    
    # Creating probability density function (PDF)
    axs[1].plot(data, stats.norm.pdf(data))
    axs[1].set_title('Probability Density Function (PDF)')
    
    # Adjusting layout
    fig.tight_layout()
    
    return fig

# Using the function
fig = task_func(1000)
plt.show(fig)


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a list of normally distributed random numbers and plot their histogram and probability density function (PDF).
#     The function should output with:
#         matplotlib.figure.Figure: A figure object containing the histogram and PDF plot.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     from scipy import stats
#     import matplotlib.pyplot as plt
#     def task_func(size=1000):
#     ```
