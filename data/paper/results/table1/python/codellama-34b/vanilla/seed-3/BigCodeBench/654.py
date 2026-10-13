from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Create a list of indicies in the first column of the array that match the target value
    idx = np.where(array[:, 0] == target_value)[0]
    # Extract the second column of the array
    y_data = array[:, 1]
    # Create a loglinear fit of the form f(x) = a * np.exp(-b * x) + c, 
    # where x is the first column of the array and a, b, c are parameters to be optimized
    popt, _ = optimize.curve_fit(lambda x, a, b, c: a * np.exp(-b * x) + c, idx, y_data)
    # Plot the fitted curve on a matplotlib Axes object
    ax = plt.plot(idx, y_data, label='Data')
    ax.plot(idx, popt[0] * np.exp(-popt[1] * idx) + popt[2], label='Fitted exponential decay')
    plt.xlabel('Index')
    plt.ylabel('Value')
    plt.legend()
    plt.show()
    return (popt, ax)

# Example usage
array = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
target_value = 4
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
