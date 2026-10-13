from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Find the rows of the array that match the target value in the first column
    matching_rows = array[array[:, 0] == target_value]
    # Convert the array of matching rows to a list of indices
    indices = matching_rows[:, 1].tolist()
    # Define the cost function for the optimization
    def cost_func(params, indices):
        # Define a decay function with the given parameters
        decay = np.exp(-params[0] * indices)
        # Compute the error as the mean squared error between the decay and the values in the second column of the array
        error = np.mean((decay - array[indices, 2]) ** 2)
        return error
    # Define the initial parameters for the optimization
    init_params = (1,)
    # Perform the least-squares optimization using the optimize.least_squares function
    result = optimize.least_squares(cost_func, init_params, args=(indices,))
    # Compute the optimized parameters
    popt = result.x
    # Extract the current and optimized curve fits
    curve_data = array[:, [1, 2]].copy()
    curve_data[:, 1] = np.exp(-popt[0] * curve_data[:, 0])
    # Create a matplotlib Axes object to plot the data and fits
    fig, ax = plt.subplots()
    ax.plot(curve_data[:, 0], curve_data[:, 1], '.', color='black', label='Data')
    ax.plot(curve_data[:, 0], curve_data[:, 2], '.', color='blue', label='Fit')
    ax.legend()
    ax.set_xlabel('Time (s)')
    ax.set_ylabel('Amplitude')
    ax.set_title('Exponential Decay')
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
