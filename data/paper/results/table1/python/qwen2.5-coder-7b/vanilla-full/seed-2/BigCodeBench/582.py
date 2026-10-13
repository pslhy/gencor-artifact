from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate normally distributed random numbers with mean 0 and standard deviation 1
    data = np.random.normal(0, 1, size)
    
    # Create a figure and a set of subplots
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(12, 6))
    
    # Plot the histogram of the data
    ax1.hist(data, bins=30, density=True, alpha=0.6, color='g')
    ax1.set_title('Histogram of Normal Distribution')
    ax1.set_xlabel('Value')
    ax1.set_ylabel('Frequency')
    
    # Plot the probability density function of the data
    xmin, xmax = plt.xlim()
    x = np.linspace(xmin, xmax, 100)
    p = stats.norm.pdf(x, 0, 1)
    ax2.plot(x, p, 'k', linewidth=2)
    ax2.set_title('Probability Density Function')
    ax2.set_xlabel('Value')
    ax2.set_ylabel('Density')
    
    # Adjust layout and show the plot
    plt.tight_layout()
    plt.show()
    
    return fig


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
