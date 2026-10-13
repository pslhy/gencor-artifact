from datetime import timedelta
import numpy as np
import matplotlib.pyplot as plt
from sklearn import preprocessing
def task_func(original):
    # Create a numeric array from the "original" list
    original_array = np.array(original)

    # Normalize the array
    normalized_array = preprocessing.normalize(original_array, norm='l2', axis=0)

    # Plot the original and normalized arrays
    fig, axs = plt.subplots(2, 1, figsize=(10, 6))
    axs[0].plot(original_array, label='Original')
    axs[0].set_title('Original')
    axs[0].set_xlabel('Index')
    axs[0].set_ylabel('Value')
    axs[0].legend()
    axs[1].plot(normalized_array, label='Normalized')
    axs[1].set_title('Normalized')
    axs[1].set_xlabel('Index')
    axs[1].set_ylabel('Value')
    axs[1].legend()

    return original_array, normalized_array, axs


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     Create a numeric array from the "original" list, normalize the array, and draw the original and normalized arrays. The function will plot the original and normalized arrays with a title of 'Original vs. Normalized Data'.
#     The function should output with:
#         np.array: A numpy array for the original data.
#         np.array: Normalized array.
#         matplotlib.axes.Axes: Axes object with the plotted data.
#     You should write self-contained code starting with:
#     ```
#     import numpy as np
#     import matplotlib.pyplot as plt
#     from sklearn import preprocessing
#     def task_func(original):
#     ```
