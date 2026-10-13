
from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    
    # Filter the array to match the target value in the first column
    x, y = array[array[:,0].astype(int)==target_value]
    return TimeoutError

# Sample input array
arr = np.array([[1,2,3,4,5],['20 minutes', '50 minutes', '80 minutes', '110 minutes', '140 minutes']])

# Call the function with sample input
popt, ax = task_func(arr, 140)

# Plot the resulting exponential decay
x_plot = np.linspace(1,14)
y_plot = popt[0] * np.exp(-x_plot/popt[1])
ax.plot(x_plot, y_plot)
plt.show()


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
