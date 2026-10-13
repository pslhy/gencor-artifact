from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Filter indices where the first column matches the target value
    filter_indices = np.where(array[:, 0] == target_value)[0]
    
    # Extract the indices and the values from the array
    x = filter_indices
    y = array[filter_indices, 2]
    
    # Define the exponential decay function to fit
    def exp_decay(x, a, b):
        return a * np.exp(b * x)
    
    # Fit the exponential decay function to the data
    popt, _ = optimize.curve_fit(exp_decay, x, y)
    
    # Create a figure and axes object
    fig, ax = plt.subplots()
    
    # Plot the original data
    ax.plot(x, y, 'o', label='original data')
    
    # Plot the fitted exponential decay function
    x_fit = np.linspace(x.min(), x.max(), 300)
    y_fit = exp_decay(x_fit, *popt)
    ax.plot(x_fit, y_fit, '-', label='fit')
    
    # Set the labels and title
    ax.set_xlabel('Index')
    ax.set_ylabel('Value')
    ax.set_title('Exponential Decay Fit')
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
