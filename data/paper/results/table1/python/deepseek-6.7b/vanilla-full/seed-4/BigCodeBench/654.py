from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Extract indices where the first column matches the target value
    indices = np.where(array[:, 0] == target_value)[0]
    
    # Define the exponential decay function to fit
    def func(x, a, b, c):
        return a * np.exp(-b * x) + c

    # Fit the function to the indices
    popt, pcov = optimize.curve_fit(func, indices, array[indices, 1])

    # Create a new figure and axis for plotting
    fig, ax = plt.subplots()

    # Plot the original data
    ax.scatter(indices, array[indices, 1], label='Data')

    # Plot the fitted function
    ax.plot(indices, func(indices, *popt), label='Fit', color='red')

    ax.set_xlabel('Index')
    ax.set_ylabel('Value')
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
