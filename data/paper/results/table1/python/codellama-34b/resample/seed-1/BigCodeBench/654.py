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
    # Filter the array to keep only the rows which contain target_value in the first column
    array = array[array[:, 0] == target_value]
    # Handle the case where there are no matches
    if len(array) == 0:
        return [], plt.Figure()
    # Function to fit to the data
    def fitting_function(time, log_rate, T_ = 24, offset, scale):
        return scale*np.exp(-(time-offset) / T_) + log_rate
    # Get the first column as the time values, the second column as the exponential decay functions
    time_values = array[:, 0].astype(np.float)
    exp_values = np.log(array[:, 1].astype(np.float))
    # Set initial values and bounds for the fitting function parameters
    p_guess = [0, 1, 1]
    p_bounds = (
        [-np.inf, -np.inf, 0],
        [np.inf, np.inf, np.inf]
    )
    # Optimize the fitting function using curve_fit
    p_opt, p_cov = optimize.curve_fit(fitting_function, time_values, exp_values, p_guess, p_bounds)
    # Create a figure
    fig, ax = plt.subplots()
    # Plot the data and the fitting function curve
    ax.plot(time_values, exp_values, 'o', label='data')
    ax.plot(time_values, fitting_function(time_values, *p_opt), label='fitting function')
    ax.set_xlabel('Time')
    ax.set_ylabel('Exponential decay')
    ax.set_title('Exponential decay fit')
    ax.legend()
    return [], fig

# === Turn 2 ===
# < User Prompt >
#     The following errors were found in the previous code:
#     - <python>:12:51: parameter without a default follows parameter with a default
#     Please regenerate the code, taking these errors into account.
from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Filter the array to keep only the rows which contain target_value in the first column
    array = array[array[:, 0] == target_value]
    # Handle the case where there are no matches
    if len(array) == 0:
        return [], plt.Figure()
    # Defines a function to fit to the data
    def function(time, offset, T):
        return offset + array[np.array(time) > T]
    # Get the first column as the time values
    time_values = array[:, 0].astype(np.float)
    # Get the second column as the exponential decay
    exponential_values = array[:, 1].astype(np.float)
    # Set the initial values and bounds for the fitting function parameters
    p_init = [0, 1]
    p_bounds = (
        (0, np.inf),
        (0, np.inf)
    )
    # Optimize the fitting function using curve_fit
    p_opt, p_cov = optimize.curve_fit(function, time_values, exponential_values, p_init, p_bounds)
    # Plot the data and the fitting function curve
    fig, ax = plt.subplots()
    ax.plot(time_values, exponential_values, 'o', label='data')
    ax.plot(time_values, function(time_values, p_opt), label='fitting function')
    ax.set_xlabel('Time')
    ax.set_ylabel('Exponential decay')
    ax.set_title('Exponential decay fitted to data')
    ax.legend()
    return p_opt, fig

