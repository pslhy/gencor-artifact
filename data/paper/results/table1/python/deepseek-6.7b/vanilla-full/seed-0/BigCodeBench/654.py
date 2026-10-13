from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Get indices where the first column matches the target_value
    indices = np.where(array[:,0] == target_value)[0]

    # Define the exponential decay function
    def exp_decay(t, a, b, c):
        return a * np.exp(-b * t) + c

    # Generate time array starting from 0 for fitting
    time = np.arange(len(indices))

    # Fit the exponential decay function to the indices
    popt, _ = optimize.curve_fit(exp_decay, time, indices)

    # Create a plot of the original data and fit
    fig, ax = plt.subplots()
    ax.plot(time, indices, 'ko', label='original data')
    ax.plot(time, exp_decay(time, *popt), 'r-', label='fit: a=%5.3f, b=%5.3f, c=%5.3f' % tuple(popt))
    ax.legend()

    # Return the optimized parameters and the Axes object
    return (popt, ax)


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
