from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    array = array[array[:, 0] == target_value, :]
    array[:, 1] = (array[:, 1] - array[:, 1].min()) 
    index = array[:, 0] - array[:, 0].min()
    popt, pcov = optimize.curve_fit(lambda x, a, b: a * np.exp(-b * x), index, array[:, 1], p0=[1, 1])
    x_vals = np.linspace(index.min(), index.max(), 400)
    y_vals = popt[0] * np.exp(-popt[1] * x_vals)
    fig, ax = plt.subplots()
    ax.scatter(index, array[:, 1], label='Data')
    ax.plot(x_vals, y_vals, label='Fitted curve', color='red')
    ax.legend()
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
