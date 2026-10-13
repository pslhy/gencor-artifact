from datetime import timedelta
from datetime import datetime
import matplotlib.pyplot as plt
import pandas as pd
def task_func(data):
    # Convert the input dataframe to a datetime format
    data['date'] = pd.to_datetime(data['month'])

    # Sort the data by date in ascending order
    data = data.sort_values(by='date')

    # Extract the year from the first date in the dataframe
    year = data.iloc[0]['date'].year

    # Plot a bar chart
    ax = data.plot(kind='bar', x='date', y='value', legend=None)

    # Customize the plot
    ax.set_title(f'Monthly Data for {year}')
    ax.set_xlabel('Month')
    ax.set_ylabel('Value')
    xtick_labels = [d.strftime('%b') for d in data['date']]
    ax.set_xticklabels(xtick_labels)
    plt.xticks(rotation=45)

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
