# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# 
# === Turn 1 ===
# < User Prompt >
#     Fit an exponential decay function to the indices in the array where the first column matches the target value.
#     The function should output with:
#         tuple: Containing the optimized parameters of the fitting function (popt) and the matplotlib Axes object.
#     You should write self-contained code starting with:
#     ```
#     import matplotlib.pyplot as plt
#     import scipy.optimize as optimize
#     import numpy as np
#     def task_func(array, target_value):
#     ```
from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # extract the column to fit
    values = array[:, 1]
    inds = np.where(array[:, 0] == target_value)[0]
    n = len(inds)
    if n == 0:
        return (None, None)
    # create function to fit with an exponential decay
    def exp_decay(x, a, b, c):
        return a * np.exp(-b * x) + c
    # create x-values for the fit
    xvals = inds.astype(np.float64) / n
    # fit the function to the values
    popt, _ = optimize.curve_fit(exp_decay, xvals, values)
    # create a plot
    fig, ax = plt.subplots()
    ax.plot(xvals, values, 'o', label='Data')
    ax.plot(xvals, exp_decay(xvals, *popt), label='Fit')
    ax.set_xlabel('Indices')
    ax.set_ylabel('Values')
    ax.legend()
    return popt, ax

