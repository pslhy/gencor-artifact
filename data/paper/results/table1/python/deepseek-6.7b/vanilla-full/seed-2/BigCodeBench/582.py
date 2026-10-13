from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    np.random.seed(0) # for consistent results
    # generate normally distributed numbers with mean 0 and standard deviation of 1
    random_numbers = np.random.normal(0, 1, size)

    # create a figure and set the size
    fig = plt.figure(figsize=(12, 6))

    # histogram
    ax1 = fig.add_subplot(121)
    ax1.hist(random_numbers, bins=30, color="skyblue", ec="black")
    ax1.set_title('Histogram')
    ax1.set_xlabel('Data Points')
    ax1.set_ylabel('Frequency')

    # probability density function (PDF)
    ax2 = fig.add_subplot(122)
    x = np.linspace(-4, 4, 1000)
    y = stats.norm.pdf(x, 0, 1) # normal distribution with mean 0 and standard deviation of 1
    ax2.plot(x, y, color="red")
    ax2.set_title('Probability Density Function')
    ax2.set_xlabel('Data Points')
    ax2.set_ylabel('Probability')

    # set the spacing between subplots
    fig.tight_layout()

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
