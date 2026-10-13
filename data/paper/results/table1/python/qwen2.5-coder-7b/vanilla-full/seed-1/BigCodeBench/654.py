from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    def exponential_decay(x, a, b):
        return a * np.exp(-b * x)

    # Filter the array where the first column matches the target value
    matching_indices = np.where(array[:, 0] == target_value)[0]
    times = array[matching_indices, 1]
    # Convert times to datetime objects and then to timedelta to numerical values
    times = np.array([(t - times[0]).total_seconds() for t in times])
    values = array[matching_indices, 2]

    # Initial guess for parameters
    popt, _ = optimize.curve_fit(exponential_decay, times, values, p0=(1, 0.1))

    # Create a plot
    fig, ax = plt.subplots()
    ax.scatter(times, values, label='Data')
    x_vals = np.linspace(0, times[-1], 100)
    ax.plot(x_vals, exponential_decay(x_vals, *popt), 'r-', label='Fit')
    ax.legend()
    plt.show()

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
