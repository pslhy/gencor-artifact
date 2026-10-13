from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
    # Generate a list of normally distributed random numbers
    data = np.random.normal(0,1,size)
    
    # Create a figure object
    fig, ax = plt.subplots(2, figsize=(10,8)) 
    
    # Histogram
    mu, sigma = stats.norm.fit(data)
    bins = np.linspace(-4, 4, 100)
    ax[0].hist(data, bins=bins, density=True, alpha=0.6, color='g') 
    ax[0].set_title('Histogram')

    # PDF
    pdf = stats.norm(mu, sigma)
    x = np.linspace(-4,4,100)
    ax[1].plot(x, pdf.pdf(x), color='red', label='PDF')
    ax[1].set_title('Probability Density Function')

    # Combine plots
    plt.tight_layout()

    return fig

fig = task_func()
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
