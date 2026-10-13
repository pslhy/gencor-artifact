from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Defining the exponential decay function
    def func(x, a, b, c):
        return a * np.exp(-b * x) + c

    # Filtering the array based on the target value in the first column
    data = array[array[:,0] == target_value]
    x_data = data[:,1]
    y_data = data[:,2]

    # Performing the optimization
    popt, _ = optimize.curve_fit(func, x_data, y_data)

    # Plotting the data and the fitted curve
    fig, ax = plt.subplots()
    ax.plot(x_data, y_data, 'o', label='data')
    ax.plot(x_data, func(x_data, *popt), '-', label='fit')

    ax.set_xlabel('x data')
    ax.set_ylabel('y data')
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
