from datetime import timedelta
import numpy as np
import matplotlib.pyplot as plt
import math
def task_func(frequency, sample_size=10000):
    # Raise an exception for negative frequency
    if frequency < 0:
        raise ValueError("Frequency must be non-negative")
    # Raise an exception for non-positive sample size
    if sample_size <= 0:
        raise ValueError("Sample size must be positive")
    # Calculate the time array
    time_array = np.linspace(0, 10, sample_size)
    # Calculate the sine and cosine wave
    sine_wave = np.sin(2 * math.pi * frequency * time_array)
    cosine_wave = np.cos(2 * math.pi * frequency * time_array)
    # Plot the sine and cosine wave
    fig, ax = plt.subplots()
    ax.plot(time_array, sine_wave, label="Sine wave")
    ax.plot(time_array, cosine_wave, label="Cosine wave")
    ax.set_xlabel("Time")
    ax.set_ylabel("Amplitude")
    ax.set_title(f"Sine and Cosine Wave with Frequency {frequency}")
    ax.legend()
    return fig, ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a diagram of a sine wave and cosine wave with a given frequency and return the plot.
#     The function should raise the exception for: ValueError: If the frequency is negative. ValueError: If the sample size is non-positive.
#     The function should output with:
#         matplotlib.figure.Figure: The figure object containing the plot.
#         matplotlib.axes.Axes: The axes object of the plot.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     import matplotlib.pyplot as plt
#     import math
#     def task_func(frequency, sample_size=10000):
#     ```
