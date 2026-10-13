from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    # Generate noisy sine wave with specified length and noise level
    x = np.linspace(0, array_length * timedelta(days=1).total_seconds(), array_length)
    y = np.sin(x) + np.random.normal(0, noise_level, size=array_length)
    
    # Define model function to fit data
    def sine_func(x, A, w):
        return A * np.sin(w * x)
    
    # Fit model function to data using curve_fit
    popt, _ = curve_fit(sine_func, x, y)
    
    # Generate plot of noisy sine wave and adjusted curve
    fig, ax = plt.subplots(figsize=(10, 6))
    ax.plot(x, y, label='Noisy Sine Wave')
    ax.plot(x, sine_func(x, *popt), label='Adjusted Curve')
    ax.legend()
    ax.set_xlabel('Time (Days)')
    ax.set_ylabel('Amplitude')
    ax.set_title('Adjusted Sine Wave')
    
    return fig


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
