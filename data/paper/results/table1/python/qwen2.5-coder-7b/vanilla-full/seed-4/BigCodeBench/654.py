from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    def exp_decay(x, a, b):
        return a * np.exp(-b * x)
    
    # Filter indices where the first column matches the target value
    valid_indices = np.where(array[:, 0] == target_value)[0]
    x = valid_indices - valid_indices[0]  # Normalize indices
    y = array[valid_indices, 1]  # Get the corresponding y values
    
    # Fit the exponential decay function
    popt, pcov = optimize.curve_fit(exp_decay, x, y)
    
    # Plotting the original data points and the fitted curve
    fig, ax = plt.subplots()
    ax.scatter(x, y, label='Data')
    x_fit = np.linspace(x.min(), x.max(), 100)
    y_fit = exp_decay(x_fit, *popt)
    ax.plot(x_fit, y_fit, 'r--', label='Fitted')
    ax.set_xlabel('Indices after normalization')
    ax.set_ylabel('Second column values')
    ax.legend()
    
    return tuple(popt), ax


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
