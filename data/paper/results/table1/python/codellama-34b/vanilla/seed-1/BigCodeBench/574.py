from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    # Generate noisy sine wave
    x = np.linspace(0, 2*np.pi, array_length)
    y = np.sin(x) + noise_level * np.random.normal(size=array_length)

    # Bounds for the optimization
    bounds = (0, [noise_level])

    # Define the function to optimize
    def func(x, offset, amplitude, frequency):
        return offset + amplitude * np.sin(x * frequency)

    # Optimize the parameters using curve_fit
    params, _ = curve_fit(func, x, y, bounds=bounds)

    # Plot the data and the adjusted curve
    plt.plot(x, y, 'bo', label='Noisy Sine Wave')
    plt.plot(x, func(x, *params), 'r', label='Adjusted Curve')
    plt.legend()
    plt.show()

# Test the function
task_func()


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a noisy sine wave of a specified length and adjusts a curve using curve_fit from scipy.optimize to the data.
#     The function should output with:
#         Axes object: A plot showing the noisy sine wave and its adjusted curve.
#     You should write self-contained code starting with:
#     ```
#     from scipy.optimize import curve_fit
#     import matplotlib.pyplot as plt
#     import numpy as np
#     def task_func(array_length=100, noise_level=0.2):
#     ```
