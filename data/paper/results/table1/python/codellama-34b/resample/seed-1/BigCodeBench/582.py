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
    data = np.random.normal(size=size)

    # Plot a histogram of the data
    plt.hist(data, bins='auto', alpha=0.5, label='Histogram')

    # Calculate the PDF of the data
    x = np.linspace(min(data), max(data), size = 1000, endpoint=True)
    pdf = np.exp(-(x*x)/2)/np.sqrt(2*np.pi)

    # Plot the PDF
    plt.plot(x, pdf, label='PDF')

    # Set title, labels, and legend
    plt.title('Random Normal Distribution')
    plt.xlabel('Value')
    plt.ylabel('Frequency')
    plt.legend()

    # Show the plot
    plt.show()

    return plt.figure

