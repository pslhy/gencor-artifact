from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):

    # Generate a noisy sine wave
    x = np.linspace(0, array_length, array_length)
    y = np.sin(x) + np.random.normal(0, noise_level, array_length)
    y = np.sin(x)

    # Define a curve fitting function
    def sine_func(x, A, w, p):
        return A * np.sin(w * x + p)

    # Curve fit the data using the function
    popt, _ = curve_fit(sine_func, x, y)

    # Plot the original data and the adjusted curve
    plt.plot(x, y, 'bo', label='Original')
    plt.plot(x, sine_func(x, *popt), 'r', label='Adjusted')
    plt.legend()
    plt.show()

# Call the function and adjust the inputs
array_length = 100
noise_level = 0.2
task_func(array_length, noise_level)


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
