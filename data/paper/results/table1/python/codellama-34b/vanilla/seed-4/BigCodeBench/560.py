from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    # convert data column to datetime format
    data['date'] = pd.DatetimeIndex(data['date']).date
    # create a pivot table with months as index and values as values
    pivot = pd.pivot_table(data, index='date', values='values', columns='month')
    # stack the pivot table and reset index
    pivot = pivot.stack().reset_index()
    # set the index as month year
    pivot['month_year'] = [f"{m}-{y}" for m, y in zip(pivot['month'], pivot['index'])]
    # plot the bar chart
    plt.bar(pivot['month_year'], pivot['values'])
    plt.title("Monthly Data for {}".format(pd.Timedelta(days=1)))
    plt.xlabel("Month")
    plt.ylabel("Value")
    plt.show()


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
