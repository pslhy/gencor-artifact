from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Create a list of normally distributed random numbers
    x = stats.norm.rvs(size=size, loc=0, scale=1)
    
    # Plot the histogram
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.hist(x, bins=20, density=True, alpha=0.5)
    ax.set_xlabel('Values')
    ax.set_ylabel('Density')
    ax.set_title('Histogram of Normally Distributed Random Numbers')
    fig.tight_layout()
    
    # Plot the probability density function
    ax2 = ax.twinx()
    ax2.plot(x, stats.norm.pdf(x), linestyle='--', label='PDF')
    ax2.set_ylabel('Density')
    ax2.set_xlabel('Values')
    ax2.legend()
    fig.tight_layout()
    
    # Show the plot
    plt.show()


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
