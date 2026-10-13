from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    def exponential_decay(x, a, b):
        return a * np.exp(b * x)

    sub_array = array[array[:, 0] == target_value]
    x_data = np.arange(len(sub_array))  # Indices where first column matches target value
    y_data = sub_array[:, 2]  # Assuming third column contains the values to fit

    popt, cov = optimize.curve_fit(exponential_decay, x_data, y_data)

    fig, ax = plt.subplots()
    ax.plot(x_data, y_data, 'ro', label='Data')
    ax.plot(x_data, exponential_decay(x_data, *popt), 'b-', label='Fit')
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
