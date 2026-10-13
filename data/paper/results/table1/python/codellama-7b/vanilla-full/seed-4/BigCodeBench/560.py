from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    # convert data to datetime format
    data['date'] = pd.to_datetime(data['date'])

    # create figure and axis objects
    fig, ax = plt.subplots()

    # plot data
    ax.bar(data['date'].dt.to_period('M'), data['value'])

    # format x-axis
    ax.xaxis.set_major_locator(plt.MaxNLocator(12))
    ax.set_xlabel('Month')

    # format y-axis
    ax.set_ylabel('Value')

    # set title
    fig.suptitle(f'Monthly Data for {data["date"].dt.year[0]}')

    # return axis object
    return ax


# <System Prompt>
#     You are an expert in Python programming. Solve the given problem by writing solution code in Python. When answering, insert the solution code in a ```python...``` block.
#     Do not include test cases or explanations as comments in the code.
# 
# < User Prompt >
#     This function plots a bar chart of monthly data values for a single year, with 'month' on the x-axis and 'value' on the y-axis.
#     The function should output with:
#         Axes object: A matplotlib.axes.Axes object representing the plot, with the title formatted as 'Monthly Data for yyyy', x label as 'Month', and y label as 'Value'.
#     You should write self-contained code starting with:
#     ```
#     from datetime import datetime
#     import matplotlib.pyplot as plt
#     import pandas as pd
#     def task_func(data):
#     ```
