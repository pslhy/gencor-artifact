from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Create a list of normally distributed random numbers
    rand_nums = np.random.normal(size=size)

    # Create a figure object
    fig, ax = plt.subplots(2, 1, figsize=(8,8))

    # Plot the histogram
    ax[0].hist(rand_nums, bins=30, density=True)
    ax[0].set_title('Histogram')
    ax[0].set_xlabel('Random Numbers')
    ax[0].set_ylabel('Frequency')

    # Plot the probability density function
    x = np.linspace(-4, 4, 1000)
    y = stats.norm.pdf(x, 0, 1) # update the mean and standard deviation as needed
    ax[1].plot(x, y)
    ax[1].set_title('Probability Density Function')
    ax[1].set_xlabel('Random Numbers')
    ax[1].set_ylabel('Probability Density')

    # Adjust layout and spacing
    fig.tight_layout()
    plt.subplots_adjust(hspace=0.5)

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
