from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate normally distributed random numbers
    data = stats.norm.rvs(size=size)
    # Create a histogram plot
    plt.hist(data, bins=50, alpha=0.5, edgecolor='black')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.title('Histogram of Normally Distributed Random Numbers')
    # Add a probability density function (PDF) plot on top of the histogram
    mean, std = data.mean(), data.std()
    plt.plot(np.linspace(mean - 3 * std, mean + 3 * std, 100), stats.norm.pdf(np.linspace(mean - 3 * std, mean + 3 * std, 100), mean, std))
    plt.ylabel('Probability Density Function (PDF)')
    plt.xlabel('Value')
    plt.title('Normal Distribution Probability Density Function')
    plt.show()

task_func()


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
