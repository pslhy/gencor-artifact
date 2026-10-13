from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    # Convert data to datetime and set as index
    data['date'] = pd.to_datetime(data['date'])
    data = data.set_index('date')
    
    # Resample data to monthly frequency and sum the values
    monthly_data = data.resample('MS').sum()
    
    # Create x-axis tick labels for months
    months = pd.date_range(start=monthly_data.index[0], end=monthly_data.index[-1], freq='MS')
    month_labels = [month.strftime('%b') for month in months]
    
    # Plotting
    fig, ax = plt.subplots()
    ax.bar(month_labels, monthly_data['value'])
    ax.set_title(f'Monthly Data for {monthly_data.index[0].year}')
    ax.set_xlabel('Month')
    ax.set_ylabel('Value')
    
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
