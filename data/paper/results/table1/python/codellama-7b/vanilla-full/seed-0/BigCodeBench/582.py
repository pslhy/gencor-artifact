from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):

    # Generate normally distributed random numbers
    rand_nums = stats.norm.rvs(size=size, loc=50, scale=10)

    # Plot histogram
    plt.hist(rand_nums, bins=50, edgecolor='black')

    # Get the x values for the PDF function
    x = np.linspace(40, 60, 1000)

    # Calculate PDF values
    pdf = stats.norm.pdf(x, loc=50, scale=10)

    # Plot PDF
    plt.plot(x, pdf, color='red')

    # Set the title and labels
    plt.title('Histogram and PDF of Normally Distributed Random Numbers')
    plt.xlabel('Value')
    plt.ylabel('Frequency or Probability Density')

    # Show the plot
    plt.show()

    return plt.gcf()


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
