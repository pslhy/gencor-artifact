from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    # Generate time array
    t = np.linspace(0, 1, array_length)
    # True sine wave
    y_true = np.sin(2 * np.pi * t)
    
    # Add noise to the sine wave
    np.random.seed(0)  # for reproducibility
    noise = noise_level * np.random.normal(size=t.shape)
    y_noisy = y_true + noise
    
    # Fit a sine curve to the noisy data
    def sine_func(x, amplitude, frequency, phase, offset):
        return amplitude * np.sin(2 * np.pi * frequency * (x - phase)) + offset
    
    popt, _ = curve_fit(sine_func, t, y_noisy, p0=[1, 1, 0, 0])
    
    # Plotting
    fig, ax = plt.subplots()
    ax.plot(t, y_noisy, 'b.', label='Noisy data')
    ax.plot(t, sine_func(t, *popt), 'r-', label='Fitted sine curve')
    ax.legend()
    plt.show()
    
    return ax


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
