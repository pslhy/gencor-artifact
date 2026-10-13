
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
    time_values = array[:, 0].astype(np.float32)
    exponential_decay_values = array[:, 1].astype(np.float32)
    # Initialize the optimization parameters
    init_params = np.array([0.0, 1.0, 1.0, 0.0])
    # Define the boundaries for the optimization
    bounds = [(0, 0.5), (0.1, 100), (0.001, 100), (0.0, 24)]
    # Run the optimization
    popt, _ = optimize.                                       fmin_l_bfgs_b(fitting_function, init_params, (time_values, exponential_decay_values), 
                                                       bounds=bounds, 
                                                       args=(target_value,),
                                                      )
    
    # Plot the result
    fig, ax = plt.subplots()
    ax.plot(array[:, 0].astype(np.float32), array[:, 1].astype(np.float32), 'bo')
    ax.plot(time_values, fitting_function(time_values, *popt), 'r-')
    return popt, fig


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
