from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generating normally distributed random numbers
    random_numbers = np.random.normal(0, 1, size)
    
    # Creating a figure to hold both of the plots
    fig = plt.figure(figsize=(12, 6))
    
    # Plotting the histogram
    ax1 = fig.add_subplot(121)
    ax1.hist(random_numbers, bins=30, density=True, alpha=0.6, color='g')
    ax1.set_title('Histogram')

    # Generating the values for PDF
    mean, std_dev = stats.norm.fit(random_numbers)
    pdf_values = stats.norm.pdf(np.linspace(-4,4,100), mean, std_dev)
    
    # Plotting the PDF
    ax2 = fig.add_subplot(122)
    ax2.plot(np.linspace(-4,4,100), pdf_values, '-', linewidth=3, color='orange', label='PDF')
    ax2.set_title('Probability density function')

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
