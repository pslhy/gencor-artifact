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
    mu, sigma = 0, 1
    rv = stats.norm(mu, sigma)
    data = rv.rvs(size=size)
    fig, (ax_hist, ax_pdf) = plt.subplots(1, 2, figsize=(12, 6))
    plt.suptitle('Histogram & PDF of Random Sampling')
    ax_hist.hist(data, bins=20, edgecolor='k')
    ax_hist.set_xlabel('Value')
    ax_hist.set_ylabel('Frequency')
    ax_pdf.plot(rv.ppf(np.linspace(0, 1, 100)))
    ax_pdf.set_xlabel('Value')
    ax_pdf.set_ylabel('Density')
    return fig

