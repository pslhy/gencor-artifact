from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate a list of normally distributed random numbers
    x = np.random.normal(size=size)
    # Plot the histogram of the data
    counts, bin_edges, _ = plt.hist(x, bins=20, alpha=0.5)
    # Calculate the PDF for the same data
    pdf = stats.norm.pdf(bin_edges, loc=np.mean(x), scale=np.std(x))
    # Plot the PDF as a line
    plt.plot(bin_edges, pdf, 'k--')
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
