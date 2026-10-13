from datetime import timedelta
import numpy as np
import matplotlib.pyplot as plt
import math
def task_func(frequency, sample_size=10000):
    # Check input arguments
    if frequency <= 0:
        raise ValueError("Frequency must be positive")
    if sample_size < 1:
        raise ValueError("Sample size must be greater than 1")

    # Calculate time values for the plot
    t = np.linspace(0, sample_size, 1000)

    # Calculate sine and cosine wave values
    sine_wave = np.sin(2 * np.pi * frequency * t)
    cosine_wave = np.cos(2 * np.pi * frequency * t)

    # Create the figure and axes object
    fig, ax = plt.subplots()

    # Plot the sine and cosine wave
    ax.plot(t, sine_wave, label="Sine Wave")
    ax.plot(t, cosine_wave, label="Cosine Wave")

    # Set title, labels, and legend
    ax.set_title("Sine and Cosine Waves")
    ax.set_xlabel("Time (s)")
    ax.set_ylabel("Amplitude")
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
