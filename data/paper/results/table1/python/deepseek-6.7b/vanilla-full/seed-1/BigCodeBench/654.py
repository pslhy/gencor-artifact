from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    def exp_decay(x, a, b, c):
        return a * np.exp(-b * x) + c

    index_match = np.where(array[:, 0] == target_value)
    popt, _ = optimize.curve_fit(exp_decay, index_match, array[index_match, 1])

    fig, ax = plt.subplots(1, 1)
    ax.scatter(index_match, array[index_match, 1], color='r')
    ax.plot(index_match, exp_decay(index_match, *popt), color='k')

    return popt, ax

# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
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
