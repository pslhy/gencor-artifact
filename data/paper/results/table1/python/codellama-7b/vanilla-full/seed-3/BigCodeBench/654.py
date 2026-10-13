from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Create a list of indices where the first column matches the target value
    indices = np.where((array[:,0] == target_value))
    
    # Extract the data for the indices where the first column matches the target value
    data = array[indices]
    
    # Create a numpy array for the x-values
    x = np.arange(data.shape[0])
    
    # Define the function to be fit
    def exp_decay(x, tau, a):
        return a * np.exp(-x / tau)
    
    # Define the bounds for the parameter tau and a
    bounds = [(0, None), (0, None)]
    
    # Perform the fit using scipy.optimize.curve_fit
    popt, _ = optimize.curve_fit(exp_decay, x, data[:,1], bounds=bounds)
    
    # Plot the data and the fit
    fig, ax = plt.subplots()
    ax.scatter(x, data[:,1], label='Data')
    ax.plot(x, exp_decay(x, *popt), label='Fit')
    ax.legend()
    
    return popt, ax

# Example usage
array = np.array([
    [1, 100],
    [2, 400],
    [3, 100],
    [4, 500]
])

target_value = 2

popt, ax = task_func(array, target_value)

print(popt)


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
