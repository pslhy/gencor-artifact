from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Filter array by first column matching the target value
    filtered_array = array[array[:, 0] == target_value]
    # Define exponential decay function
    def exp_decay(t, amp, tau, shift):
        return amp * np.exp(-(t - shift) / tau)
    # Define objective function for optimization
    def objective(params):
        return np.sum((filtered_array[:, 1] - exp_decay(filtered_array[:, 0], *params)) ** 2)
    # Perform optimization
    p0 = [1, 1, 1]
    popt, _ = optimize.leastsq(objective, p0)
    # Plot data and result
    fig, ax = plt.subplots()
    ax.plot(filtered_array[:, 0], filtered_array[:, 1], 'o', label='data')
    ax.plot(filtered_array[:, 0], exp_decay(filtered_array[:, 0], *popt), '-', label='fit')
    ax.legend()
    plt.show()
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
