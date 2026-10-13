from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    date_format = "%Y%m"
    months = pd.date_range(start=data['date'].min(), end=data['date'].max(), freq='M')
    values = [data.loc[data['date'].dt.strftime(date_format) == month.strftime(date_format), 'value'].sum() for month in months]
    
    fig, ax = plt.subplots()
    ax.bar(months.month, values)
    ax.set_title(f'Monthly Data for {months.year[0]}')
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
