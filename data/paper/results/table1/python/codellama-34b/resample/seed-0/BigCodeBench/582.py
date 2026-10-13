# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
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
from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):

    # Generate a list of normally distributed random numbers
    num = [np.random.normal() for _ in range(size)]

    # Plot the histogram of the data
    plt.hist(num, hist_type='step', density=True, alpha=0.8, label='Datalist histogram')

    # Plot the PDF of the data
    x = np.linspace(min(num), max(num), size)
    plt.plot(x, stats.norm.pdf(x, loc=np.average(num), scale=np.std(num)), marker='*', markerfacecolor='k', label='True PDF')

    # Set the plot title, labels, and legend
    plt.title('Histogram and PDF of Datalist')
    plt.xlabel('Value')
    plt.ylabel('Relative Frequency')
    plt.legend(loc='upper right')

    # Show the plot
    plt.show()
    
    # Return the figure object
    return plt.gcf()

