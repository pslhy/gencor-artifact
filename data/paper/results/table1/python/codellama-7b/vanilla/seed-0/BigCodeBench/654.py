from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):

    # Find the indices of the target value in the first column
    target_indices = np.where(array[:, 0] == target_value)[0]

    # Extract the corresponding values from the second column
    target_values = array[target_indices, 1]

    # Create a new array with the time values as indices and the target values as the values
    time_array = np.arange(len(target_values))
    data_array = pd.DataFrame(target_values, index=time_array)

    # Fit an exponential decay function to the data
    popt, _ = optimize.curve_fit(lambda t, a, b, c: a * np.exp(-b * t) + c, time_array, data_array)

    # Create a plot of the data and the fitted function
    fig, ax = plt.subplots()
    ax.plot(time_array, data_array, 'o', label='Data')
    ax.plot(time_array, task_func(time_array, *popt), '-', label='Fitted Function')
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
