from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    def sine_wave(x, amplitude, frequency, phase, offset):
        return amplitude * np.sin(frequency * x + phase) + offset

    x = np.linspace(0, 2 * np.pi, array_length)
    amplitude = 1.0
    frequency = 1.0
    phase = 0.0
    offset = 0.5
    y = sine_wave(x, amplitude, frequency, phase, offset)

    noise = noise_level * np.random.randn(array_length)
    y_noisy = y + noise

    params, covariance = curve_fit(sine_wave, x, y_noisy)

    plt.figure()
    plt.plot(x, y_noisy, 'r.')
    plt.plot(x, sine_wave(x, *params), 'b-')
    plt.xlabel('X')
    plt.ylabel('Y')
    plt.title('Noisy Sine Wave and Fitted Curve')
    return plt


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
