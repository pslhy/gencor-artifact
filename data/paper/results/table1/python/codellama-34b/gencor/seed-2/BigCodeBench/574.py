
from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    
    Noisy_sine_x = np.linspace(0,4*np.pi, num=array_length)
    Noise = np.random.normal(scale=noise_level, size=array_length)
    Noisy_sine_y = np.sin(Noisy_sine_x) + Noise

    xdata = np.linspace(min(Noisy_sine_x), max(Noisy_sine_y), num=100)
    ydata = Noisy_sine_y

    def func(x, a, b):
        return np.sin(x)

    popt, pcov = curve_fit(func, Noisy_sine_x, Noisy_sine_y)
    y_curvefit = func(xdata, popt[0], popt[1])

    plt.plot(Noisy_sine_x, Noisy_sine_y,'.',label="Noisy sine")
    plt.plot(xdata,y_curvefit,"-",label="Adjusted curve")
    plt.legend()
    plt.show()

if __name__=="__main__":
    task_func(100,0.2)



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
