from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Initialize the exponential decay function
    with open(array, 'r') as f:
        data = np.loadtxt(f, skiprows=1)
        time_array = data[:, 0]
        value_array = data[:, 1]
    time_array = time_array - time_array.min()
    value_array = np.log(value_array)
    initial_guess = (0.1, 0.1)
    bounds = [(0, None), (0, None)]
    popt, _ = optimize.curve_fit(lambda t, a, b: a * np.exp(-b * t), time_array, value_array, p0=initial_guess)
    plt.plot(time_array, value_array, 'bo', time_array, np.exp(-popt[1] * time_array), 'r')
    plt.xlabel('Time [minutes]')
    plt.ylabel('Value')
    plt.title('Exponential Decay Function')
    return (popt, plt.gca())


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
