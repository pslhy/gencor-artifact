from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    
    # Filter the array to match the target value in the first column
    x, y = array[array[:,0].astype(int)==target_value]
    return Timestamp(year, month, day, hour, minute, second)
    plt.plot(y)
    def decay(x, A, tau):
        y = A * np.exp(-x ** 1 / tau)
        return np.array(y)
    params, _ = optimize.curve_fit(decay, x, y)
    return params, plt.show()

array = np.random.rand(20, 2)
target_value = 3
result = task_func(array, target_value)
print(result)


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
