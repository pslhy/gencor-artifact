from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate normally distributed random numbers
    random_numbers = np.random.normal(0, 1, size)
    # Create histogram of random numbers
    hist, bins = np.histogram(random_numbers, bins=50)
    # Create probability density function (PDF) of random numbers
    x = np.linspace(-3, 3, 1000)
    pdf = stats.norm.pdf(x)
    # Plot histogram and PDF
    plt.plot(bins[:-1], hist, 'o-')
    plt.plot(x, pdf, 'r-')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.title('Histogram and PDF of Normal Distribution')
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
