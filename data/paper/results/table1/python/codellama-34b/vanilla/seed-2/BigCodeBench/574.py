from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
    
    Noisy Wave - Function:
    ---------------------
    Noisy Wave

    x = np.linspace(0, 100, array_length)
    noise = np.random.normal(0, noise_level / 2, size=array_length)
    y = np.sin(np.pi * x) + noise

    plt.plot(x, y)
    plt.show()
    
    Refine Curve - curve_fit
    ------------------------
    def fit_func(x, *params_values):
        p = params_values
        return np.sin(np.pi * x * noise_level / 2 + p[0])
    
    params, _ = curve_fit(fit_func, x, y)

    Noisy Wave - Function
    -------------------
    plt.plot(x, y, '.b')
    plt.plot([params[1], params[1]], None, None, lw=2, label="Derived Curve")
    plt.legend(loc='best')
    plt.show()

    return plt.sca(x, y)


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
