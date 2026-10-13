from datetime import timedelta
import numpy as np
import matplotlib.pyplot as plt
from sklearn import preprocessing
def task_func(original):
    # Create a numpy array from the original list
    np_array = np.array(original)
    # Apply min-max normalization to the array
    normalized_array = preprocessing.normalize(np_array)
    # Create a figure with two subplots, using a grid of shape (1, 2)
    fig, axs = plt.subplots(1, 2, figsize=(10, 5))
    # Plot the original and normalized arrays on each axis
    axs[0].plot(np_array, label='Original')
    axs[1].plot(normalized_array, label='Normalized')
    # Set the title of the figure
    axs[0].set_title('Original vs. Normalized Data')
    axs[1].set_title('Normalized Data')
    # Create a legend for both plots
    handles, labels = axs[0].get_legend_handles_labels()
    fig.legend(handles, labels, loc='upper center')
    # Set the x-axis label to 'Value' and the y-axis label to 'Timestamp'
    axs[0].set_xlabel('Value')
    axs[0].set_ylabel('Timestamp')
    axs[1].set_xlabel('Timestamp')
    axs[1].set_ylabel('Normalized Value')
    # Return the normalized array and the axis object
    return normalized_array, axs[1]


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
