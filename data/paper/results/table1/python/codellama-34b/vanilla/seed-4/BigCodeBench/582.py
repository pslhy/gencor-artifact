from datetime import timedelta
import numpy as np
from scipy import stats
import matplotlib.pyplot as plt
def task_func(size=1000):
  # Generate a list of normally distributed random numbers with mean 0 and standard deviation 1
  x = np.random.normal(size=size)

  # Create histogram and PDF of the data
  fig, axs = plt.subplots(2, 1, figsize=(12, 8))
  hist, edges = np.histogram(x, density=True)
  axs[0].plot(edges[:-1], hist)
  x_grid = np.linspace(min(edges), max(edges), 200)
  axs[0].set_title('Histogram')
  axs[1].plot(x_grid, stats.norm.pdf(x_grid))
  axs[1].set_title('Probability Density Function')

  # Plot the results
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
