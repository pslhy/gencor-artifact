from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    def func(x, a, b, c, d):
        return a * np.sin(b * (x + c)) + d

    # Generating noisy sine wave
    x = np.linspace(0, 2 * np.pi, array_length)
    y = np.sin(x) + np.random.normal(0, noise_level, x.shape[0])

    # Curve-fitting the generated data
    popt, _ = curve_fit(func, x, y)

    # Generating the adjusted curve for plotting
    y_fit = func(x, *popt)

    # Creating the plot
    fig, ax = plt.subplots()
    ax.plot(x, y, 'ko', label='Noisy Sine Wave')
    ax.plot(x, y_fit, 'r-', label='Adjusted Curve')
    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.legend(loc='best')
    
    return ax

# Call the function to generate the plot
task_func()
plt.show()


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
