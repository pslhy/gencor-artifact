from datetime import timedelta
from scipy.optimize import curve_fit
import matplotlib.pyplot as plt
import numpy as np
def task_func(array_length=100, noise_level=0.2):
  
   def func(x, a, b, c):
       return a * np.sin(b * x) + c

   x = np.linspace(0, 2 * np.pi, array_length)
   y = func(x, 1, 20, 1) + noise_level * np.random.normal(size=array_length)

   popt, _ = curve_fit(func, x, y)

   plt.figure(figsize=(12, 6))

   plt.subplot(1, 2, 1)
   plt.plot(x, y, 'o', label='data')
   plt.plot(x, func(x, *popt), 'r-', label='fit')
   plt.legend()
   plt.title('Adjusted curve')

   plt.subplot(1, 2, 2)
   plt.plot(x, y, 'o', label='data')
   plt.plot(x, func(x, 1, 20, 1), 'g-', label='actual')
   plt.legend()
   plt.title('Original sine wave with noise')

   return plt.gca()


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
