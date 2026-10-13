from datetime import timedelta
import matplotlib.pyplot as plt
import scipy.optimize as optimize
import numpy as np
def task_func(array, target_value):
    # Filter the array to keep only the indices with the target value in the first column
    target_indices = np.where(array[:, 0] == target_value)[0]
    
    # Extract the signal and noise for the target value
    signal = array[target_indices, 1]
    noise = array[target_indices, 2]
    
    # Define the exponential decay function
    def exp_decay(t, A, tau):
        return A * np.exp(-t / tau)
    
    # Define the cost function for the optimization
    def cost_function(popt, signal, noise):
        return np.sum((signal - exp_decay(t, *popt))**2) + np.sum((noise - np.random.normal(0, 1, len(signal)))**2)
    
    # Initial guess for the parameters
    A_init = 1
    tau_init = 100
    
    # Perform the optimization using the cost function
    popt, _ = optimize.curve_fit(exp_decay, time, signal, p0=[A_init, tau_init])
    
    # Plot the signal and noise for the target value
    time = np.arange(0, len(signal), timedelta(1))
    plt.plot(time, signal, label='Signal')
    plt.plot(time, noise, label='Noise')
    plt.legend()
    
    # Return the optimized parameters and the matplotlib Axes object
    return (popt, plt.gca())


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Fit an exponential decay function to the indices in the array where the first column matches the target value.
#     The function should output with:
#         tuple: Containing the optimized parameters of the fitting function (popt) and the matplotlib Axes object.
#     You should write self-contained code starting with:
#     ```
#     import matplotlib.pyplot as plt
#     import scipy.optimize as optimize
#     import numpy as np
#     def task_func(array, target_value):
#     ```
