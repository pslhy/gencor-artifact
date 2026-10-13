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

    def exponential_function():
        def func(x, a, b, c):
            return a * np.exp(-b * x) + c
        return func

    popt, _ = optimize.curve_fit(exponential_function(), timedelta(array[:,0], array[:,1]))
        plt.plot(array[:,0], array[:,1], 'yo', label='data')
    plt.plot(array[:,0], popt[0] * np.exp(-popt[1] * array[:,0]), 'r', label='fitted curve')
    plt.legend()
    plt.ylabel('y')
    plt.xlabel('x')
    plt.title('Exponential Fit')
    return popt, plt

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:13:8: unexpected indent
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    def exponential_function():
        def func(x, a, b, c):
            return a * np.exp(-b * x) + c
        return func

    popt, _ = optimize.curve_fit(exponential_function(), timedelta(array[:,0], array[:,1]))
    plt.plot(array[:,0], array[:,1], 'yo', label='data')
    plt.plot(array[:,0], popt[0] * np.exp(-popt[1] * array[:,0]), 'r', label='fitted curve')
    plt.legend()
    plt.ylabel('y')
    plt.xlabel('x')
    plt.title('Exponential Fit')
    return popt, plt

