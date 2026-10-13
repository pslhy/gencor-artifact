from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate a normally distributed random list
    x = np.random.normal(0, 1, size)
    # Calculate the histogram of x
    hist, bins = np.histogram(x, density=True)
    # Calculate the PDF of x
    pdf = stats.norm(0, 1).pdf(x)
    # Plot the histogram and PDF
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(bins[:-1], hist, 'o-', color='blue', label='Histogram')
    ax.plot(bins, pdf, '-', color='red', label='PDF')
    ax.set_xlabel('Value')
    ax.set_ylabel('Frequency/PDF')
    ax.legend()
    plt.show()
    return fig
print(task_func(1000))


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
